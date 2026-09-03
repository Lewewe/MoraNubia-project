.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;
.super Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;
.source "PoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initFaceWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1133
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2002(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z

    .line 1138
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    return-void
.end method

.method public switchCamera()V
    .locals 1

    .line 1143
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1900(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1146
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->switchFaceCameraId()V

    return-void
.end method
