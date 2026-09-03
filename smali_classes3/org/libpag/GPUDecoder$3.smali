.class Lorg/libpag/GPUDecoder$3;
.super Ljava/lang/Object;
.source "GPUDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libpag/GPUDecoder;->releaseAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libpag/GPUDecoder;

.field final synthetic val$releaseHandlerThread:Landroid/os/HandlerThread;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/libpag/GPUDecoder;Ljava/lang/Runnable;Landroid/os/HandlerThread;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/libpag/GPUDecoder$3;->this$0:Lorg/libpag/GPUDecoder;

    iput-object p2, p0, Lorg/libpag/GPUDecoder$3;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/libpag/GPUDecoder$3;->val$releaseHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 297
    iget-object v0, p0, Lorg/libpag/GPUDecoder$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 298
    invoke-static {}, Lorg/libpag/GPUDecoder;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/libpag/GPUDecoder$3$1;

    invoke-direct {v1, p0}, Lorg/libpag/GPUDecoder$3$1;-><init>(Lorg/libpag/GPUDecoder$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
