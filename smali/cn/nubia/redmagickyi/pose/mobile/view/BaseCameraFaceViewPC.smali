.class public abstract Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;
.super Ljava/lang/Object;
.source "BaseCameraFaceViewPC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cameraView:Landroid/view/SurfaceView;

.field private ivClose:Landroid/widget/ImageView;

.field private ivSwitchCamera:Landroid/widget/ImageView;

.field private layoutCamera:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_pc_live_face:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mRootView:Landroid/view/View;

    .line 23
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->layoutCamera:Landroid/widget/FrameLayout;

    .line 24
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mRootView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cameraview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->cameraView:Landroid/view/SurfaceView;

    .line 25
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mRootView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->ivClose:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mRootView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->ivSwitchCamera:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getCameraView()Landroid/view/SurfaceView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->cameraView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->close()V

    goto :goto_0

    .line 43
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    if-ne p1, v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->switchCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->layoutCamera:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public abstract switchCamera()V
.end method
