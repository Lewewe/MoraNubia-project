.class public Lcn/nubia/redmagickyi/crop/view/SeekBarView;
.super Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;
    }
.end annotation


# static fields
.field public static final CLIP_TIME_MAX:I = 0x7404

.field private static final MSG_UPDATE_LONGPRESS:I = 0x5

.field private static final MSG_UPDATE_NORMAL:I = 0x4


# instance fields
.field private IsMove:Z

.field private actualX:I

.field private mFirstOpen:Z

.field private mGesture:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIsClipMove:Z

.field private mIsOver30s:Z

.field private mIsUserChanged:Z

.field private mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

.field private mLongItem:Lcn/nubia/mediaeditor/editor/VideoItem;

.field private mLongPressItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLongPressNumberOfThumb:I

.field private mMediaPath:Ljava/lang/String;

.field private mNormalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNormalNumberOfThumb:I

.field private mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

.field private mPortraitItem:Lcn/nubia/mediaeditor/editor/VideoItem;

.field private final portraitRunnable:Ljava/lang/Runnable;

.field private tmpX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    .line 51
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressNumberOfThumb:I

    .line 53
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    .line 54
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    .line 61
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressItems:Ljava/util/List;

    .line 65
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsUserChanged:Z

    .line 66
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipMove:Z

    .line 67
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsOver30s:Z

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mFirstOpen:Z

    .line 109
    new-instance p2, Lcn/nubia/redmagickyi/crop/view/SeekBarView$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$2;-><init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    .line 408
    new-instance p2, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;-><init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mOnGestrue:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    .line 79
    new-instance p1, Lcn/nubia/redmagickyi/crop/view/SeekBarView$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$1;-><init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMediaPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPortraitItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/crop/view/SeekBarView;Lcn/nubia/mediaeditor/editor/VideoItem;)Lcn/nubia/mediaeditor/editor/VideoItem;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPortraitItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private advancelefttime(I)I
    .locals 6

    .line 653
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 655
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsWallPaper:Z

    if-eqz v2, :cond_0

    .line 656
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 657
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 659
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-long v4, p1

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 660
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 661
    iget-wide p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    const-wide/16 v0, 0x3e8

    sub-long v0, p0, v0

    :cond_0
    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    move-wide v0, p0

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method private advancerighttime(I)I
    .locals 6

    .line 633
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 635
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsWallPaper:Z

    if-eqz v2, :cond_0

    .line 636
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 637
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 639
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v5

    sub-int/2addr p1, v5

    .line 640
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr p1, v5

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v5

    sub-int/2addr v4, p1

    int-to-long v4, v4

    mul-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 641
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 646
    :cond_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 647
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method private clipMove(I)V
    .locals 4

    .line 381
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    if-nez v0, :cond_0

    .line 382
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->IsMove:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->IsMove:Z

    .line 387
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    .line 388
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    .line 390
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->IsMove:Z

    if-eqz p1, :cond_4

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    if-lez p1, :cond_2

    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    .line 391
    :cond_2
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    if-gez p1, :cond_3

    .line 393
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 394
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberStartMove(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 395
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    .line 396
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberEndMove(I)I

    goto :goto_1

    :cond_3
    if-lez p1, :cond_4

    .line 399
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 400
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberEndMove(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 401
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    .line 402
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->actualX:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberStartMove(I)I

    :cond_4
    :goto_1
    return-void
.end method

.method private drawNormalThumbnails(Landroid/graphics/Canvas;)V
    .locals 9

    .line 146
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightDrawableW:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 150
    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mScreenWidth:I

    if-ge v0, v2, :cond_6

    if-lez v1, :cond_6

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    .line 154
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    div-int/2addr v0, v2

    .line 155
    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v2, v3

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mBorder:I

    add-int/2addr v3, v4

    .line 161
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    if-eq v4, v0, :cond_2

    .line 162
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    .line 163
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->portraitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    const/4 v0, 0x0

    .line 166
    :goto_0
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    if-gt v0, v4, :cond_6

    if-gt v2, v1, :cond_6

    .line 167
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v4, v2

    if-lt v4, v1, :cond_3

    move v4, v1

    .line 172
    :cond_3
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v7, v5, :cond_4

    .line 173
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_5

    .line 176
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 180
    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 181
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 182
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 183
    iput v4, v7, Landroid/graphics/Rect;->right:I

    .line 184
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailHeight:I

    add-int/2addr v4, v3

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 185
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    iget v8, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailHeight:I

    invoke-direct {p0, v5, v4, v8}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4, v6, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    :goto_2
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private getClipPlayedMoveTime()J
    .locals 3

    .line 315
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 316
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 317
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    if-lt v0, v1, :cond_1

    .line 318
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 320
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLongPlayedMoveTime()J
    .locals 6

    .line 297
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressX:I

    if-gt v0, v1, :cond_0

    .line 298
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressX:I

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 299
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressX:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressMaxW:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 300
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressMaxW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 302
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPrePlayedX:I

    if-le v0, v1, :cond_2

    .line 303
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongEndTime:J

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPrePlayedX:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressMaxThumbWidth:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressTime:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 307
    :cond_2
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressTime:J

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongEndTime:J

    iget-wide v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongStartTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPrePlayedX:I

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongPressMaxThumbWidth:I

    int-to-long v4, p0

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method

.method private getNormalPlayedMoveTime()J
    .locals 3

    .line 284
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    .line 287
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 288
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 289
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 291
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private judgeEnd(I)Z
    .locals 2

    .line 614
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 615
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    goto :goto_1

    .line 616
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    if-gt v0, v1, :cond_2

    .line 617
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    add-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, v0

    .line 618
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 619
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    goto :goto_1

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->advancerighttime(I)I

    move-result p1

    goto :goto_0

    .line 624
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->advancerighttime(I)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    .line 626
    :goto_1
    iget-wide p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x7788

    cmp-long p0, v0, p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private judgeStart(I)Z
    .locals 4

    .line 592
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    sub-int/2addr v0, p1

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    if-gt v0, v3, :cond_2

    .line 595
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    .line 596
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_1

    .line 599
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->advancelefttime(I)I

    move-result p1

    goto :goto_0

    .line 602
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->advancelefttime(I)I

    move-result p1

    :goto_0
    int-to-long v1, p1

    .line 604
    :goto_1
    iget-wide p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    sub-long/2addr p0, v1

    const-wide/16 v0, 0x765c

    cmp-long p0, p0, v0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 133
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p2

    int-to-float v0, v3

    div-float/2addr p0, v0

    int-to-float v0, p3

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 134
    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    .line 135
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 137
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 138
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, p0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private scrubberEndMove(I)I
    .locals 5

    .line 353
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 354
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 356
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 357
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    if-gt p1, v0, :cond_2

    .line 358
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    add-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 359
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 361
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->calClipRightTime()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    .line 368
    :goto_0
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 369
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz v1, :cond_5

    .line 370
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipChanged(ZI)V

    .line 371
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-eq p1, v0, :cond_5

    .line 372
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onIsClip(Z)V

    .line 375
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    .line 376
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    .line 377
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    return p0
.end method

.method private scrubberStartMove(I)I
    .locals 5

    .line 325
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 326
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 328
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 329
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    if-gt p1, v0, :cond_2

    .line 330
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 331
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 333
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->calClipLeftTime()I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    .line 340
    :goto_0
    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    cmp-long p1, v3, v1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    .line 341
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz v1, :cond_5

    .line 342
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipChanged(ZI)V

    .line 343
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-eq p1, v0, :cond_5

    .line 344
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onIsClip(Z)V

    .line 347
    :cond_5
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    .line 348
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    .line 349
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    return p0
.end method


# virtual methods
.method public cancelClip()V
    .locals 2

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    .line 563
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipPlay:Z

    .line 564
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz v0, :cond_0

    .line 565
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onIsClip(Z)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 567
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    .line 568
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    .line 569
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    .line 570
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 571
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    return-void
.end method

.method public cancelVideoItem()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPortraitItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/editor/VideoItem;->release()V

    .line 576
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPortraitItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    .line 578
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/editor/VideoItem;->release()V

    .line 580
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mLongItem:Lcn/nubia/mediaeditor/editor/VideoItem;

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 194
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getClipLeftTime()I
    .locals 2

    .line 486
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    long-to-int p0, v0

    return p0
.end method

.method public getClipMove()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipMove:Z

    return p0
.end method

.method public getClipRightTime()I
    .locals 2

    .line 490
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    long-to-int p0, v0

    return p0
.end method

.method public getMax()J
    .locals 2

    .line 546
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    return-wide v0
.end method

.method public getTotalTime()I
    .locals 2

    .line 494
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    long-to-int p0, v0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawRect(Landroid/graphics/Canvas;)V

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawNormalThumbnails(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawClipLeft(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawClipRight(Landroid/graphics/Canvas;)V

    .line 124
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawClipInvisiable(Landroid/graphics/Canvas;)V

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->drawPlayedBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 100
    invoke-super/range {p0 .. p5}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    const/4 v1, 0x0

    if-eq p1, v2, :cond_c

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_d

    return v1

    .line 220
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPressedThumb:I

    if-eq p1, v2, :cond_8

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipMove:Z

    .line 260
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->clipMove(I)V

    goto :goto_1

    .line 249
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->judgeEnd(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsOver30s:Z

    if-eqz p1, :cond_3

    .line 251
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipOver30s()V

    .line 253
    :cond_3
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    if-le v0, p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsOver30s:Z

    if-nez p1, :cond_b

    .line 254
    :cond_4
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipMove:Z

    .line 255
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberEndMove(I)I

    goto :goto_1

    .line 239
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->judgeStart(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsOver30s:Z

    if-eqz p1, :cond_6

    .line 241
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipOver30s()V

    .line 243
    :cond_6
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    if-ge v0, p1, :cond_7

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsOver30s:Z

    if-nez p1, :cond_b

    .line 244
    :cond_7
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipMove:Z

    .line 245
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->scrubberStartMove(I)I

    goto :goto_1

    .line 222
    :cond_8
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 224
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-eqz p1, :cond_9

    .line 225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipPlayedMoveTime()J

    move-result-wide v0

    goto :goto_0

    .line 228
    :cond_9
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getNormalPlayedMoveTime()J

    move-result-wide v0

    .line 230
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p1, :cond_a

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_a

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    long-to-int v3, v0

    invoke-interface {p1, v3, v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onProgressChanged(IZ)V

    .line 233
    :cond_a
    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_b

    .line 234
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    .line 235
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    :cond_b
    :goto_1
    return v2

    .line 267
    :cond_c
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->tmpX:I

    .line 269
    :cond_d
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPressedThumb:I

    .line 270
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsUserChanged:Z

    .line 271
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getTime(J)J

    .line 272
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p1, :cond_e

    .line 273
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    long-to-int p0, v0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onStopTrackingTouch(I)V

    :cond_e
    return v2

    .line 205
    :cond_f
    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->whichScrubber(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPressedThumb:I

    .line 206
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPressedThumb:I

    if-eq p1, v2, :cond_10

    goto :goto_2

    .line 208
    :cond_10
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsUserChanged:Z

    .line 210
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getTime(J)J

    move-result-wide v0

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p0, :cond_11

    long-to-int p1, v0

    .line 212
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onStartTrackingTouch(I)V

    :cond_11
    :goto_2
    return v2
.end method

.method public setClipIsPlay(Z)V
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClipPlay:Z

    .line 558
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    return-void
.end method

.method public setMax(I)V
    .locals 8

    int-to-long v0, p1

    .line 514
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    .line 515
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 516
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    .line 518
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mFirstOpen:Z

    if-eqz p1, :cond_4

    .line 519
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    .line 520
    iget-wide v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    const-wide/16 v6, 0x79e0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    const-wide/16 v2, 0x7404

    .line 521
    iput-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    goto :goto_0

    .line 523
    :cond_1
    iput-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    .line 525
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    .line 526
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    div-long/2addr v2, v4

    .line 527
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightDrawableW:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    long-to-int p1, v2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    .line 529
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p1, :cond_3

    .line 530
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    long-to-int v0, v2

    invoke-interface {p1, v1, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipChanged(ZI)V

    goto :goto_1

    .line 533
    :cond_2
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    iput-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    .line 534
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    .line 535
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p1, :cond_3

    .line 536
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipEndTime:J

    long-to-int v0, v2

    invoke-interface {p1, v1, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipChanged(ZI)V

    .line 539
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mFirstOpen:Z

    .line 541
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMinClipW:I

    .line 542
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    return-void
.end method

.method public setMediaPath(Ljava/lang/String;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMediaPath:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    .line 503
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mMediaPath:Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->resumeOriginal()V

    const/4 p1, 0x0

    .line 505
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalNumberOfThumb:I

    .line 506
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    int-to-long v0, p1

    .line 550
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setTime(JJ)V

    return-void
.end method

.method public setTime(JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsUserChanged:Z

    .line 456
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iput-wide p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mCurrentTime:J

    .line 460
    iput-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    .line 461
    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mTotalTime:J

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 462
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 463
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsClip:Z

    if-eqz p1, :cond_2

    .line 464
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    if-lt p1, p2, :cond_1

    .line 465
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 466
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mListener:Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;

    if-eqz p1, :cond_1

    .line 467
    iget-wide p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipStartTime:J

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;->onClipPlayEnd(I)V

    .line 470
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftX:I

    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_4

    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipRightX:I

    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedDrawableW:I

    sub-int/2addr p2, p3

    if-gt p1, p2, :cond_4

    .line 472
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    goto :goto_0

    .line 476
    :cond_2
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p2, p3

    .line 477
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_3

    .line 478
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mNormalMaxThumbWidth:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    .line 479
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mPlayedX:I

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setWallpaper(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mIsWallPaper:Z

    return-void
.end method
