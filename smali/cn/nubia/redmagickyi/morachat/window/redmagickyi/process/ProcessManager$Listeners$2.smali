.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentWifiName()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCancelClicked()V
    .locals 0

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->stopSelf()V

    return-void
.end method

.method public onChatClicked()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->startChatActivity(Landroid/content/Context;)V

    return-void
.end method

.method public onTranslateClicked()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->hide()V

    .line 342
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 356
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p0

    const-string v0, "click"

    const-string/jumbo v1, "yes"

    const-string v2, "cn.nubia.gamelauncher"

    const-string v3, "mora_agent_Translators"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
