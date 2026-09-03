.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;
.super Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;
.source "TotalSizeLruDiskUsage.java"


# instance fields
.field private final maxSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 18
    iput-wide p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;->maxSize:J

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max size must be positive number!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected accept(Ljava/io/File;JI)Z
    .locals 0

    .line 23
    iget-wide p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalSizeLruDiskUsage;->maxSize:J

    cmp-long p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
