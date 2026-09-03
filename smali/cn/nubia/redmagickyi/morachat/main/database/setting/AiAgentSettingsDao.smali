.class public Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;
.super Ljava/lang/Object;
.source "AiAgentSettingsDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;
    }
.end annotation


# static fields
.field public static final ACTION_SETTINGS_CHANGED:Ljava/lang/String; = "intent.action.redmagickyi.aiagent.settings.changed"

.field public static final KEY_PROPERTY:Ljava/lang/String; = "propertyKey"

.field private static final PROPERTY_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "AiAgentSettingsDao"

.field private static aiAgentSettingsDao:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;


# instance fields
.field private op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "config_aiagent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->PROPERTY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->PROPERTY_FILE:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    return-void
.end method

.method public static createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    .line 39
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->aiAgentSettingsDao:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method private sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 121
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.aiagent.settings.changed"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v0, "propertyKey"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendOnSettingsChanged "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AiAgentSettingsDao"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dropTable()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->clear()V

    return-void
.end method

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;)I
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;->getDefValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->getData(Ljava/lang/String;I)I

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

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->getDefValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public declared-synchronized getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 72
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    monitor-exit p0

    return v2

    .line 74
    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 75
    monitor-exit p0

    return v1

    .line 76
    :cond_1
    :try_start_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 77
    monitor-exit p0

    return v2

    .line 78
    :cond_2
    :try_start_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 79
    monitor-exit p0

    return v2

    .line 80
    :cond_3
    :try_start_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 81
    monitor-exit p0

    return v2

    .line 82
    :cond_4
    :try_start_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_5

    .line 83
    monitor-exit p0

    return v2

    .line 86
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getDefValue()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->getData(Ljava/lang/String;I)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne p1, v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Landroid/content/ContentValues;)V
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->setData(Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z
    .locals 5

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v1, "cn.nubia.gamelauncher"

    const-string v3, "mora_agent_accompany"

    const-string v4, "switch"

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    :goto_0
    invoke-virtual {v0, v1, v3, v4, p2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return v2

    .line 97
    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;I)Z
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 67
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao$Op;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->sendOnAiAgentSettingsChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 109
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
