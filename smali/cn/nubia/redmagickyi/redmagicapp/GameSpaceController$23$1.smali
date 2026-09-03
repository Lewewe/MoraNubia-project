.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->onDismiss(ZLcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2056
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)V
    .locals 2

    .line 2059
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->dismiss(Z)Z

    .line 2061
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->getBundleData()Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnResourceUpdate(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public onUpdateFinished(Ljava/lang/String;)V
    .locals 2

    .line 2067
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: bundle newVersionName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameSpaceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object p0

    const/16 p1, 0xbc1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
