.class public Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
.super Ljava/lang/Object;
.source "ProgressEntry.java"


# instance fields
.field private currentPosition:J

.field private totalDuration:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->totalDuration:J

    .line 11
    iput-wide p3, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->currentPosition:J

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 4

    .line 23
    iget-wide v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->totalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->currentPosition:J

    :cond_0
    return-wide v2
.end method

.method public getTotalDuration()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->totalDuration:J

    return-wide v0
.end method

.method public setCurrentPosition(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->currentPosition:J

    return-void
.end method

.method public setTotalDuration(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->totalDuration:J

    return-void
.end method
