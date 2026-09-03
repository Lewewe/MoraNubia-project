.class public Lcom/zte/aimodel/FutexLockNative;
.super Ljava/lang/Object;
.source "FutexLockNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/FutexLockNative$ThreadRole;
    }
.end annotation


# instance fields
.field private nativeInstanceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "futex_lock"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/zte/aimodel/FutexLockNative;->nativeCreateInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    return-void
.end method

.method private native nativeClearSignals(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeCreateInstance()J
.end method

.method private native nativeDestroyInstance(J)V
.end method

.method private native nativeGetCurrentRole(J)I
.end method

.method private native nativeGetSignalState(JLjava/nio/ByteBuffer;I)I
.end method

.method private native nativeIsShutdownSignalSet(JLjava/nio/ByteBuffer;I)Z
.end method

.method private native nativeLock(JLjava/nio/ByteBuffer;II)V
.end method

.method private native nativeRegisterThread(JI)V
.end method

.method private native nativeRequestShutdown(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeSignal(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeTryLock(JLjava/nio/ByteBuffer;I)Z
.end method

.method private native nativeUnlock(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeUnregisterThread(J)V
.end method

.method private native nativeWait(JLjava/nio/ByteBuffer;II)V
.end method


# virtual methods
.method public clearSignals(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeClearSignals(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public clientSignal(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeSignal(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public clientWait(Ljava/nio/ByteBuffer;II)V
    .locals 6

    .line 85
    iget-wide v1, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimodel/FutexLockNative;->nativeWait(JLjava/nio/ByteBuffer;II)V

    return-void
.end method

.method public close()V
    .locals 5

    .line 29
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/zte/aimodel/FutexLockNative;->nativeDestroyInstance(J)V

    .line 31
    iput-wide v2, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    throw v0
.end method

.method public getCurrentRole()Lcom/zte/aimodel/FutexLockNative$ThreadRole;
    .locals 5

    .line 102
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1}, Lcom/zte/aimodel/FutexLockNative;->nativeGetCurrentRole(J)I

    move-result p0

    .line 103
    invoke-static {}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->values()[Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    invoke-virtual {v3}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    sget-object p0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_UNKNOWN:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    return-object p0
.end method

.method public getSignalState(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeGetSignalState(JLjava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeIsShutdownSignalSet(JLjava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method public lock(Ljava/nio/ByteBuffer;II)V
    .locals 6

    .line 55
    iget-wide v1, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimodel/FutexLockNative;->nativeLock(JLjava/nio/ByteBuffer;II)V

    return-void
.end method

.method public registerThread(Lcom/zte/aimodel/FutexLockNative$ThreadRole;)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-virtual {p1}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/zte/aimodel/FutexLockNative;->nativeRegisterThread(JI)V

    return-void
.end method

.method public requestShutdown(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeRequestShutdown(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public serverSignal(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeSignal(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public serverWait(Ljava/nio/ByteBuffer;II)V
    .locals 6

    .line 77
    iget-wide v1, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimodel/FutexLockNative;->nativeWait(JLjava/nio/ByteBuffer;II)V

    return-void
.end method

.method public signal(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeSignal(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public tryLock(Ljava/nio/ByteBuffer;I)Z
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeTryLock(JLjava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method public unlock(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zte/aimodel/FutexLockNative;->nativeUnlock(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public unregisterThread()V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    invoke-direct {p0, v0, v1}, Lcom/zte/aimodel/FutexLockNative;->nativeUnregisterThread(J)V

    return-void
.end method

.method public wait(Ljava/nio/ByteBuffer;II)V
    .locals 6

    .line 68
    iget-wide v1, p0, Lcom/zte/aimodel/FutexLockNative;->nativeInstanceId:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimodel/FutexLockNative;->nativeWait(JLjava/nio/ByteBuffer;II)V

    return-void
.end method
