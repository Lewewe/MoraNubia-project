.class Lorg/libpag/SynchronizeHandler;
.super Landroid/os/Handler;
.source "SynchronizeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libpag/SynchronizeHandler$BlockingRunnable;,
        Lorg/libpag/SynchronizeHandler$TimeoutRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final runSync(Lorg/libpag/SynchronizeHandler$TimeoutRunnable;J)Z
    .locals 2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/libpag/SynchronizeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 26
    invoke-interface {p1}, Lorg/libpag/SynchronizeHandler$TimeoutRunnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_0
    new-instance v0, Lorg/libpag/SynchronizeHandler$BlockingRunnable;

    invoke-direct {v0, p1}, Lorg/libpag/SynchronizeHandler$BlockingRunnable;-><init>(Lorg/libpag/SynchronizeHandler$TimeoutRunnable;)V

    .line 31
    invoke-virtual {v0, p0, p2, p3}, Lorg/libpag/SynchronizeHandler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result p0

    return p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "runnable must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
