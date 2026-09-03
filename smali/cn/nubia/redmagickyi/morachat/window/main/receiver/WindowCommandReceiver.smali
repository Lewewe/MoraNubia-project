.class public Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;
.super Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;
.source "WindowCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    }
.end annotation


# static fields
.field private static final BUNDLE_ACTION:Ljava/lang/String; = "BUNDLE_ACTION"

.field private static final TAG:Ljava/lang/String; = "WindowCommandReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;-><init>()V

    return-void
.end method

.method private createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getClazz()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    :cond_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->putBundleAction(Landroid/content/Intent;Ljava/lang/String;)V

    return-object v0
.end method

.method private getBundleAction(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 153
    const-string v0, "BUNDLE_ACTION"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private handleFullScreenAccompanyLaunch(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    .line 131
    const-string v0, "intent.action.redmagickyi.fullscreen.accompany.launch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v1, "propertyKey"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    invoke-interface {v2, v1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onFullScreenAccompanyLaunch(Z)V

    .line 137
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return v0
.end method

.method private putBundleAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 159
    const-string p0, "BUNDLE_ACTION"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private startService(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 163
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getBundleAction(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 174
    :goto_0
    const-string v1, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "type"

    const-string v3, "-startService by "

    const-string v4, "WindowCommandReceiver"

    if-eqz v1, :cond_a

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 178
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isGameAgentWakeup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 182
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v1, v5}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v1, v5}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    goto :goto_1

    .line 188
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 190
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 192
    :cond_6
    :goto_1
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-ne v0, v1, :cond_9

    .line 193
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 197
    :cond_7
    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->fromJsonBundle(Landroid/os/Bundle;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 198
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isShowNotification()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 210
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but failed, bcs not in game scene and wasn\'t a notification bundle."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 207
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 213
    :cond_a
    const-string v1, "cn.nubia.redmagickyi.action.QUIT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 215
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isGameAgentQuit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 217
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 219
    :cond_b
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunning(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_c
    if-eqz p2, :cond_d

    .line 223
    const-string v1, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    const-string v2, "propertyKey"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 225
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunning(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v1

    if-nez v1, :cond_f

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 229
    :cond_d
    const-string v1, "intent.action.redmagickyi.fullscreen.accompany.launch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 231
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 237
    :cond_e
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunning(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->createIntent(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_f
    :goto_3
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

    .line 38
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 39
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 91
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleAiAgentSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return v0
.end method

.method protected handleCloseSystemChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 82
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleCloseSystemChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return v0
.end method

.method protected handleDigitalHumanSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleDigitalHumanSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return v0
.end method

.method public handleMessages(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getBundleAction(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleMessages(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->handleFullScreenAccompanyLaunch(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method protected handleScreenStatusChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleScreenStatusChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return v0
.end method

.method protected handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7

    .line 109
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->handleWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 112
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "-startService by "

    const-string v5, "WindowCommandReceiver"

    if-nez v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v2, v6}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isLowVoiceWakeup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleLowPowerWakeupForGameAgent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but failed, bcs Low-Power wakeup is not allowed to handle or not supported it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 114
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but failed, bcs Tile wakeup is not supported anymore."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 125
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->startService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return v0
.end method

.method public registReceiver(Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;)V
    .locals 2

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->setListener(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    .line 48
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getActions()Ljava/util/List;

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

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public unregistReceiver()V
    .locals 1

    .line 57
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
