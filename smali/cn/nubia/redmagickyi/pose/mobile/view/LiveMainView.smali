.class public Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;
.super Ljava/lang/Object;
.source "LiveMainView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;,
        Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$Mode;
    }
.end annotation


# static fields
.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_UNITY:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

.field private mCameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

.field private mContext:Landroid/content/Context;

.field private mIvSwitchCamera:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mUnityPreview:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

.field private mUnityView:Landroid/view/SurfaceView;

.field private mode:I

.field private operateListener:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 9

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mode:I

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->handler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->dialog_mobile_live_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityView:Landroid/view/SurfaceView;

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityPreview:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    .line 43
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->iv_switch_camera:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mIvSwitchCamera:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_hint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->cameraview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    iput-object v7, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityView:Landroid/view/SurfaceView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 54
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->operateListener:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 132
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mode:I

    return p0
.end method

.method public hideCameraHint()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->hideHint()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->operateListener:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;->showMenu()V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 84
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mode:I

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->showCameraIconUI(Z)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->operateListener:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;->hideMenu()V

    .line 88
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->handler:Landroid/os/Handler;

    const-wide/16 p1, 0x190

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 91
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return v1
.end method

.method public release(Ljava/lang/Runnable;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->release()V

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityPreview:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->release(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOperateListener(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->operateListener:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityPreview:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->setSceneReadyCallback(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;)V

    return-void
.end method

.method public showCameraHint()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->showHint()V

    return-void
.end method

.method public switchMode(I)V
    .locals 3

    .line 106
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mode:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->showCameraIconUI(Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraView:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mUnityView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->mCameraPreview:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->hideCameraIconUI(Z)V

    :goto_0
    return-void
.end method
