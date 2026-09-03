.class public Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;
.super Ljava/lang/Object;
.source "AppExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/AppExecutors;
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

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncThreadExecutor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isPending(Ljava/lang/Runnable;)Z
    .locals 0

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    .line 234
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 236
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method
