.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->poseMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoseDetected()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object v0

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 482
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbbf

    .line 483
    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPoseUndetected()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object v0

    const/16 v1, 0xbbf

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbbe

    .line 492
    iput v1, v0, Landroid/os/Message;->what:I

    .line 493
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
