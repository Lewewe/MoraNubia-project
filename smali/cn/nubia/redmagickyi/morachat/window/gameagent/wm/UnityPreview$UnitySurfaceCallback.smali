.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitySurfaceCallback"
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mVisibleSurfaces:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$1;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->stopSpeaking()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->startSpeaking()V

    return-void
.end method

.method private startSpeaking()V
    .locals 0

    .line 402
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startSpeaking()V

    return-void
.end method

.method private stopSpeaking()V
    .locals 0

    .line 406
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->stopSpeaking()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VisibilityChanged, visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 375
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    .line 376
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 379
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 380
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->resume()V

    .line 382
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->changeUnitySkin()V

    .line 384
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 385
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)V

    .line 386
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->isLargeIcon:Z

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->setLargeIcon(Z)V

    return-void

    .line 389
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    .line 390
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mVisibleSurfaces:I

    if-nez p1, :cond_2

    .line 393
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 394
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 395
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->pause()V

    :cond_2
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 360
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;Ljava/lang/String;)V

    .line 361
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 362
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(Z)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 368
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 369
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(Z)V

    return-void
.end method
