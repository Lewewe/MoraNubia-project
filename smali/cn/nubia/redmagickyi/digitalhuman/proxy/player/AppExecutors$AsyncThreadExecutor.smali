.class public Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;
.super Ljava/lang/Object;
.source "Counter.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncThreadExecutor"
.end annotation


# instance fields
.field private asyncThread:Landroid/os/HandlerThread;

.field private asyncThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    .line 378
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncThreadExecutor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 380
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 385
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isPending(Ljava/lang/Runnable;)Z
    .locals 0

    .line 412
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 421
    iput-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 425
    iput-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method
