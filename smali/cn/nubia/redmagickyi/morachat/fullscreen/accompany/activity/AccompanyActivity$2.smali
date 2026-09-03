.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;
.super Ljava/lang/Object;
.source "AccompanyActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccompanyActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCloseSystemChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccompanyActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V

    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccompanyActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccompanyActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onScreenStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWakeupSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccompanyActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
