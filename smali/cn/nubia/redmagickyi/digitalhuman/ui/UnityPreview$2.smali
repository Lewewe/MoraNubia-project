.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private endTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private passTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private playEndRunnable:Ljava/lang/Runnable;

.field private startTime:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 499
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onPausePlayMotion()V
    .locals 3

    .line 540
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 542
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onPausePlayMotion()V

    :cond_1
    return-void
.end method

.method public onResumePlayMotion()V
    .locals 6

    .line 530
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 531
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onResumePlayMotion()V

    :cond_1
    return-void
.end method

.method public onStartPlayMotion(Ljava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V
    .locals 7

    .line 509
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->is2D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getDuration()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 517
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 518
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 519
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 520
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 524
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartPlayMotion(Ljava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStartSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStopPlayMotion(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    .locals 3

    .line 551
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->passTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 553
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->playEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopPlayMotion(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V

    :cond_1
    return-void
.end method

.method public onStopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    :cond_0
    return-void
.end method
