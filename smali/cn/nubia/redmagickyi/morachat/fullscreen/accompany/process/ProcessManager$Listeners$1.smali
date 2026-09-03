.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->startWithCheck(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCloseSystemChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-ne p1, v0, :cond_1

    .line 315
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->onScreenStatusChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->changeUnitySkin()V

    .line 332
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Z)V

    :cond_0
    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScreenStatusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1402(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 295
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$1500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1402(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 300
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$1500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)V

    :goto_0
    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onWakeupSettingsChanged: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Accompany-ProcessManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 343
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;->handleMessage(Z)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;->handleMessage(Z)V

    :cond_2
    :goto_0
    return-void
.end method
