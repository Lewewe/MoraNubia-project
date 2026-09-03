.class Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;
.super Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;
.source "LiveMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    return-void
.end method


# virtual methods
.method public switchCamera()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;->switchCamera()V

    :cond_0
    return-void
.end method
