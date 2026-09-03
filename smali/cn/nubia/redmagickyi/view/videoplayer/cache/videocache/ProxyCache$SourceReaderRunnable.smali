.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceReaderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;)V

    return-void
.end method
