.class public Lcom/zte/aimodel/utils/ModelSwitchController;
.super Ljava/lang/Object;
.source "ModelSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;
    }
.end annotation


# static fields
.field private static final MODEL_NAME_BASE:Ljava/lang/String; = "WenxinYiyanBase"

.field private static final TAG:Ljava/lang/String; = "ModelSwitchController"

.field private static final URI_QUERY:Ljava/lang/String; = "content://com.zte.aigc.ui.settings.switchstateprovider.ModelSwitchContentProvider/query"

.field private static final URI_UPDATE:Ljava/lang/String; = "content://com.zte.aigc.ui.settings.switchstateprovider.ModelSwitchContentProvider/update"

.field private static contentObserver:Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;

.field private static isProModel:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIsProModel()Z
    .locals 1

    .line 99
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aimodel/utils/ModelSwitchController;->readModel(Landroid/content/Context;)V

    .line 101
    sget-object v0, Lcom/zte/aimodel/utils/ModelSwitchController;->isProModel:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static declared-synchronized readModel(Landroid/content/Context;)V
    .locals 6

    const-string v0, "readModel: "

    const-class v1, Lcom/zte/aimodel/utils/ModelSwitchController;

    monitor-enter v1

    .line 28
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 29
    const-string v4, "content://com.zte.aigc.ui.settings.switchstateprovider.ModelSwitchContentProvider/query"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 32
    :try_start_1
    invoke-virtual {p0, v4, v5, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/aimodel/utils/ModelSwitchController;->setIsProModel(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catch_0
    :try_start_2
    const-string p0, "ModelSwitchController"

    const-string v4, "readModel: Exception "

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    const-string p0, "ModelSwitchController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/aimodel/utils/ModelSwitchController;->isProModel:Ljava/lang/Boolean;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " spend:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static registerModelChange(Landroid/content/Context;)V
    .locals 1

    .line 48
    const-string p0, "ModelSwitchController"

    const-string v0, "registerModelChange? DO NOTHING!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setIsProModel(Ljava/lang/String;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsProModel: modelName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelSwitchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 91
    const-string v0, "WenxinYiyanBase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/zte/aimodel/utils/ModelSwitchController;->isProModel:Ljava/lang/Boolean;

    return-void
.end method

.method public static unregisterModelChange(Landroid/content/Context;)V
    .locals 1

    .line 74
    const-string p0, "ModelSwitchController"

    const-string v0, "unregisterModelChange? DO NOTHING!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
