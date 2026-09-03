.class public Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;
.super Ljava/lang/Object;
.source "WakeupAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;
    }
.end annotation


# instance fields
.field private final URI_WAKEUP:Landroid/net/Uri;

.field private WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->URI_WAKEUP:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->checkMatchedKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkMatchedKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->URI_WAKEUP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCommandWakeup(Ljava/lang/String;)Z
    .locals 1

    .line 90
    const-string v0, "command_wakeup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGameAgentQuit(Ljava/lang/String;)Z
    .locals 1

    .line 111
    const-string v0, "gameagent_quit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGameAgentWakeup(Ljava/lang/String;)Z
    .locals 1

    .line 104
    const-string v0, "gameagent_wakeup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLowVoiceWakeup(Ljava/lang/String;)Z
    .locals 1

    .line 83
    const-string v0, "voice_wakeup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tile_wakeup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 41
    const-string v0, "intent.action.redmagickyi.wakeup.settings.changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    .line 44
    const-string p1, "propertyKey"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->checkMatchedKey(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    .line 48
    :cond_0
    const-string v0, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "type"

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isLowVoiceWakeup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isCommandWakeup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isGameAgentWakeup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "cn.nubia.redmagickyi.action.QUIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isGameAgentQuit(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return v0
.end method

.method public registContentObserver()V
    .locals 3

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;-><init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->URI_WAKEUP:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregistContentObserver()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;->access$000(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;)Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->WakeupSettingsChangedObserver:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    :cond_0
    return-void
.end method
