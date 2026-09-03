.class final Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WaitRequestsRunnable"
.end annotation


# instance fields
.field private final startSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;->startSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;->startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;)V

    return-void
.end method
