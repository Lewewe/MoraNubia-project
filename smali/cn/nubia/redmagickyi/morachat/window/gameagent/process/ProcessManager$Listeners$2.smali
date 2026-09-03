.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentWifiName()Ljava/lang/String;
    .locals 2

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isWindowOnlyTTSFromGameAgent()Z
    .locals 0

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isWindowOnlyTTSFromGameAgent()Z

    move-result p0

    return p0
.end method

.method public onIconClicked()V
    .locals 5

    .line 393
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    return-void
.end method

.method public onOutputButtonClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
    .locals 1

    .line 424
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofChat(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    return-void
.end method

.method public onOutputListCanceled()V
    .locals 0

    return-void
.end method

.method public onOutputListClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
    .locals 1

    .line 450
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofChat(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    return-void
.end method

.method public onOutputTextAreaCanceled()V
    .locals 5

    .line 482
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    :cond_0
    return-void
.end method

.method public onPresetButtonClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
    .locals 1

    .line 398
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofChat(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    return-void
.end method
