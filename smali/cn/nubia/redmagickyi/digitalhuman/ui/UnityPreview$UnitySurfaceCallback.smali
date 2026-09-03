.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;
.super Ljava/lang/Object;
.source "UnityPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitySurfaceCallback"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x1

.field private static final MSG_RESUME:I


# instance fields
.field private asyncThread:Landroid/os/HandlerThread;

.field private asyncThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 632
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UnityPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 635
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 640
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Landroid/os/Looper;Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;)Landroid/os/Handler;
    .locals 0

    .line 626
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    return-void
.end method

.method private startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    .locals 0

    .line 732
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    return-void
.end method

.method private stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 0

    .line 736
    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(ZLandroid/view/Surface;)V
    .locals 3

    .line 712
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VisibilityChanged, visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$800(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 715
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 717
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 718
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->resume()V

    .line 720
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V

    .line 722
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    const/16 p2, 0x3c

    invoke-virtual {p1, p2, v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$900(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Z)V

    goto :goto_1

    .line 725
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$1000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    .line 726
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 727
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->pause()V

    :goto_1
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 669
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 671
    iput-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->asyncThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "cause error while onVisibilityChanged: "

    .line 683
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    const-string v2, "surfaceChanged"

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$800(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Ljava/lang/String;)V

    .line 685
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x1

    .line 688
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(ZLandroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 695
    throw p0

    :catch_1
    move-exception p0

    .line 690
    const-string p1, "UnityPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 0

    .line 676
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    const-string p1, "surfaceCreated"

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$800(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Ljava/lang/String;)V

    .line 678
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 700
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$800(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Ljava/lang/String;)V

    .line 702
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 705
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->onVisibilityChanged(ZLandroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 707
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cause error while onVisibilityChanged: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnityPreview"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
