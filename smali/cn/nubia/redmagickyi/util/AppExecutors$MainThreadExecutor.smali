.class public Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;
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
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field private mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 141
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    if-ne p2, p3, :cond_1

    .line 154
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isPending(Ljava/lang/Runnable;)Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method
