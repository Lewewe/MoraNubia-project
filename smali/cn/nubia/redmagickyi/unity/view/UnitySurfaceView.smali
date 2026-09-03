.class public Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
.super Landroid/view/SurfaceView;
.source "UnitySurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final EFFECTED_MOTION_POINT:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[F>;"
        }
    .end annotation
.end field

.field private static final LAST_POINT:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[F>;"
        }
    .end annotation
.end field

.field private static lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private autoConfirmConfigurationChanged:Z

.field private shouldLockFramerate:Z

.field private unityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->LAST_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-array v1, v1, [F

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->EFFECTED_MOTION_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    .line 35
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    .line 35
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    .line 35
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    .line 35
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->init()V

    return-void
.end method

.method public static getEffectedMotionPoint()[F
    .locals 1

    .line 124
    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->EFFECTED_MOTION_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 60
    new-instance v1, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView$1;-><init>(Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static onUnityMessage(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p1, 0x7d0

    if-eq p0, p1, :cond_1

    const/16 p1, 0x7d1

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->EFFECTED_MOTION_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->LAST_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, p1, v2

    .line 176
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x1

    aget p1, p1, v0

    aput p1, p0, v0

    goto :goto_0

    .line 169
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    const-class p0, Lcn/nubia/redmagickyi/util/ApplicationContext;

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->sendOnOrientationChanged(I)V

    .line 172
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static sendOnOrientationChanged(I)V
    .locals 3

    .line 185
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p0, :cond_2

    .line 186
    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lastBgOrientation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v2, v1

    .line 193
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;-><init>()V

    const/16 v0, 0x44d

    .line 194
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setMsgID(I)V

    .line 195
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    .line 196
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockFrameRate()V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/Surface;->setFrameRate(FII)V

    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 0

    .line 150
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->sendOnOrientationChanged(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 97
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 107
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 102
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 92
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 112
    sget-object v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->LAST_POINT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v0, v1

    .line 114
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public setAutoConfirmConfigurationChanged(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->autoConfirmConfigurationChanged:Z

    return-void
.end method

.method public setShouldLockFramerate(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->shouldLockFramerate:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lockFrameRate()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->lockFrameRate()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
