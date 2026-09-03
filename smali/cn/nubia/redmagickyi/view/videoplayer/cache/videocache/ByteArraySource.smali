.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;
.super Ljava/lang/Object;
.source "ByteArraySource.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;


# instance fields
.field private arrayInputStream:Ljava/io/ByteArrayInputStream;

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;->data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;->data:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public open(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;->arrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 32
    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-void
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ByteArraySource;->arrayInputStream:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    return p0
.end method
