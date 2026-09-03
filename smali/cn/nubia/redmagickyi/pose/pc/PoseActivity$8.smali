.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initView()V
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

    .line 317
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->hideCameraIconUI(Z)V

    .line 322
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isUsingFaceIDFront()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setUsingFaceID(Z)V

    .line 323
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    .line 325
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isUsingFaceIDFront()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setCameraType(I)V

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->startPrview()V

    :cond_0
    return-void
.end method
