.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;
.super Ljava/lang/Object;
.source "WindowCommandService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAiAgentSettingsChanged, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 3

    .line 104
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCloseSystemChanged, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V

    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 3

    .line 122
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDigitalHumanSettingsChanged, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFullScreenAccompanyLaunch(Z)V
    .locals 3

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFullScreenAccompanyLaunch, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onFullScreenAccompanyLaunch(Z)V

    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 95
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScreenStatusChanged, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onScreenStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWakeupSettingsChanged, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
