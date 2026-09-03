.class public abstract Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;
.super Ljava/lang/Object;
.source "BaseCameraFaceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

.field private ivClose:Landroid/widget/ImageView;

.field private ivSwitchCamera:Landroid/widget/ImageView;

.field private layoutCamera:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;

.field private tvHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_mobile_live_face:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->layoutCamera:Landroid/widget/FrameLayout;

    .line 29
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cameraview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    .line 30
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const-string v0, "face_camera_id"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p1

    .line 31
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setCameraType(I)V

    .line 32
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setOnCameraOperateCallback(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    .line 33
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivClose:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivSwitchCamera:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->tv_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->tvHint:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method public hideHint()V
    .locals 1

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->tvHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->cameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->onChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 56
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->close()V

    goto :goto_1

    .line 58
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    if-ne p1, v0, :cond_2

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const-string v0, "face_camera_id"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->switchCamera()V

    :cond_2
    :goto_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public showHint()V
    .locals 1

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->tvHint:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public abstract switchCamera()V
.end method

.method public switchWindowStyle(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivSwitchCamera:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->layoutCamera:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->layoutCamera:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->layoutCamera:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_face_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_face_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->layoutCamera:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
