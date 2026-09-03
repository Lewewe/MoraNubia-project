.class public Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;
.super Ljava/lang/Object;
.source "DigitalHumanSettingsDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;
    }
.end annotation


# static fields
.field public static final ACTION_SETTINGS_CHANGED:Ljava/lang/String; = "intent.action.redmagickyi.digitalhuman.settings.changed"

.field public static final KEY_PROPERTY:Ljava/lang/String; = "propertyKey"

.field private static PROPERTY_FILE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "DigitalHumanSettingsDao"

.field private static aiAgentSettingsDao:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;


# instance fields
.field private op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "config_digital_human"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->PROPERTY_FILE:Ljava/io/File;

    .line 42
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->PROPERTY_FILE:Ljava/io/File;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;-><init>(Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;Ljava/io/File;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;

    .line 37
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.digitalhuman.settings.changed"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v0, "propertyKey"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendOnSettingsChanged "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DigitalHumanSettingsDao"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dropTable()V
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->clear()V

    return-void
.end method

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;)I
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->getDefValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->getData(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;)J
    .locals 4

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->getDefValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->getData(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;->getDefValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;)Z
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;->getDefValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->getData(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Landroid/content/ContentValues;)V
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->setData(Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;Z)Z
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return v2

    .line 86
    :cond_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;I)Z
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;J)Z
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->op:Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/settings/DigitalHumanSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
