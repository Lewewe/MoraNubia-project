.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalCountLruDiskUsage;
.super Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;
.source "TotalCountLruDiskUsage.java"


# instance fields
.field private final maxCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;-><init>()V

    if-lez p1, :cond_0

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalCountLruDiskUsage;->maxCount:I

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max count must be positive number!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected accept(Ljava/io/File;JI)Z
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/TotalCountLruDiskUsage;->maxCount:I

    if-gt p4, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
