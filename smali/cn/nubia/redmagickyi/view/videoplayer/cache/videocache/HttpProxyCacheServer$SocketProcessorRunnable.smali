.class final Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;
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
    name = "SocketProcessorRunnable"
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
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

    .line 336
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;->socket:Ljava/net/Socket;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->access$200(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    return-void
.end method
