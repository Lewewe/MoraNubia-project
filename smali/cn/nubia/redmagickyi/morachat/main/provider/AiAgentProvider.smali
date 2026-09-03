.class public Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;
.super Landroid/content/ContentProvider;
.source "AiAgentProvider.java"


# static fields
.field private static final ARG_GAMEASSIST_QUIT:Ljava/lang/String; = "quit"

.field private static final ARG_GAMEASSIST_SENDMESSAGE:Ljava/lang/String; = "sendMessage"

.field private static final ARG_GAMEASSIST_WAKEUP_FEATURE:Ljava/lang/String; = "wakeup_feature"

.field private static final ARG_GAMEASSIST_WAKEUP_STATUS_GET:Ljava/lang/String; = "wakeup_status_get"

.field private static final ARG_GAMEASSIST_WAKEUP_STATUS_SET:Ljava/lang/String; = "wakeup_status_set"

.field private static final METHOD_GAMEASSIST:Ljava/lang/String; = "cn.nubia.gameassist"

.field private static final METHOD_GAMEFLOAT:Ljava/lang/String; = "cn.zte.gamefloat"

.field private static final METHOD_WAKEUP_IS_WINDOW_RUNNING:Ljava/lang/String; = "isWindowRunning"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    const-string v0, "AiAgentProvider"

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "content://cn.nubia.redmagickyi.AigcProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 50
    const-string v0, "message"

    const-string v1, "AiAgentProvider"

    .line 0
    const-string v2, "AIGC gameassist window service is game scene? "

    .line 50
    :try_start_0
    const-string v3, "isWindowRunning"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "result"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 53
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunningForContentProvider(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "AIGC accompany activity is running!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v5, v6

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableAiAssistantWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v0, "AiAssistant window service is enable to run."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    .line 71
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunningForContentProvider(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "AIGC window service is running!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    .line 80
    :cond_4
    const-string v2, "cn.nubia.gameassist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "cn.zte.gamefloat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 82
    :cond_5
    const-string v2, "sendMessage"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_6

    .line 86
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    :cond_6
    const-string v2, "gameagent_wakeup"

    invoke-static {v2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->createWakeupIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    move v5, v6

    goto :goto_3

    .line 91
    :cond_7
    const-string v2, "quit"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunningForContentProvider(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    :cond_8
    const-string v2, "gameagent_quit"

    invoke-static {v2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->createQuitIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 102
    :cond_9
    const-string v2, "wakeup_feature"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 104
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isSupportedLowPowerWakeupForGameAgent()Z

    move-result v5

    goto :goto_3

    .line 105
    :cond_a
    const-string v2, "wakeup_status_get"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 107
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleLowPowerWakeupForGameAgent()Z

    move-result v5

    goto :goto_3

    .line 108
    :cond_b
    const-string v2, "wakeup_status_set"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p3, :cond_d

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    move v5, v6

    .line 113
    :cond_c
    invoke-static {v5}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->setEnableHandleLowPowerWakeupForGameAgent(Z)V

    .line 115
    :cond_d
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleLowPowerWakeupForGameAgent()Z

    move-result v5

    .line 117
    :cond_e
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 122
    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/provider/AiAgentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
