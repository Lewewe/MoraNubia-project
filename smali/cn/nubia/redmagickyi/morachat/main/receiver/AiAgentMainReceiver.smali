.class public Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AiAgentMainReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;,
        Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AiAgentMainReceiver"

.field private static volatile sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;


# instance fields
.field private listener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

.field private wakeupAction:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->wakeupAction:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    .line 33
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->registContentObserver()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->listener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    return-object p0
.end method

.method protected static getContext()Landroid/content/Context;
    .locals 1

    .line 88
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceiver(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V
    .locals 3

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    .line 53
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->setListener(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    .line 54
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 60
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->setListener(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    :goto_1
    return-void
.end method

.method public static unregisterReceiver()V
    .locals 3

    .line 65
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 67
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->wakeupAction:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->wakeupAction:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->unregistContentObserver()V

    .line 70
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 72
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    goto :goto_2

    :goto_1
    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->sInstance:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    .line 75
    throw v1

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method protected getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "intent.action.redmagickyi.aiagent.settings.changed"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "intent.action.redmagickyi.digitalhuman.settings.changed"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "intent.action.redmagickyi.wakeup.settings.changed"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "cn.nubia.redmagickyi.action.QUIT"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->listener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    return-object p0
.end method

.method protected handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 159
    const-string v0, "intent.action.redmagickyi.aiagent.settings.changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    const-string v0, "propertyKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method

.method protected handleCloseSystemChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 138
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 140
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->values()[Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    move-result-object p2

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 142
    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->access$100(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V

    :cond_2
    return v0
.end method

.method protected handleDigitalHumanSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 174
    const-string v0, "intent.action.redmagickyi.digitalhuman.settings.changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    const-string v0, "propertyKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method

.method public handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleScreenStatusChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleCloseSystemChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 111
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleDigitalHumanSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 117
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method protected handleScreenStatusChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 123
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 124
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onScreenStatusChanged(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->wakeupAction:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiAgentMainReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->listener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    return-void
.end method
