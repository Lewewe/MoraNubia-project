.class public abstract Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;
.super Ljava/lang/Object;
.source "BaseCameraPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alphaOut:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIvSwitchCamera:Landroid/widget/ImageView;

.field private mSurfaceView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

.field private mTvHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->alphaOut:Ljava/lang/Runnable;

    .line 20
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    .line 22
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mTvHint:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iput-object p4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mSurfaceView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    .line 26
    invoke-virtual {p4, p5}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setOnCameraOperateCallback(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    .line 27
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const-string p2, "face_camera_id"

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p1

    .line 28
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mSurfaceView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setCameraType(I)V

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mSurfaceView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setFaceMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;)Landroid/widget/ImageView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public hideCameraIconUI(Z)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->alphaOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public hideHint()V
    .locals 1

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mTvHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isCameraIconUIShowing()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const-string v0, "face_camera_id"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->switchCamera()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public showCameraIconUI(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->alphaOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->alphaOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showHint()V
    .locals 1

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->mTvHint:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public abstract switchCamera()V
.end method
