.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;
.super Ljava/net/ProxySelector;
.source "IgnoreHostProxySelector.java"


# static fields
.field private static final NO_PROXY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultProxySelector:Ljava/net/ProxySelector;

.field private final hostToIgnore:Ljava/lang/String;

.field private final portToIgnore:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 30
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/ProxySelector;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    .line 31
    invoke-static {p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->portToIgnore:I

    return-void
.end method

.method static install(Ljava/lang/String;I)V
    .locals 2

    .line 36
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 37
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;

    invoke-direct {v1, v0, p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    .line 38
    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->hostToIgnore:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->portToIgnore:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 44
    sget-object p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->defaultProxySelector:Ljava/net/ProxySelector;

    invoke-virtual {p0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
