.class Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;
.super Ljava/lang/Object;
.source "WindowCommandService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCloseSystemChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V

    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFullScreenAccompanyLaunch(Z)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFullScreenAccompanyLaunch, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onFullScreenAccompanyLaunch(Z)V

    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScreenStatusChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onScreenStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWakeupSettingsChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
