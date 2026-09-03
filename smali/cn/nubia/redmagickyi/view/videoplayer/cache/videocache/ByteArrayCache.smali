.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;
.super Ljava/lang/Object;
.source "ByteArrayCache.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;


# instance fields
.field private volatile completed:Z

.field private volatile data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 43
    array-length v1, p1

    if-gt p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkArgument(Z)V

    .line 45
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    array-length v2, v2

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    return-void
.end method

.method public available()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    return-void
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->completed:Z

    return-void
.end method

.method public isCompleted()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->completed:Z

    return p0
.end method

.method public read([BJI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArrayCache;->data:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    long-to-int p0, p2

    invoke-virtual {v0, p1, p0, p4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    return p0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Too long offset for memory cache "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
