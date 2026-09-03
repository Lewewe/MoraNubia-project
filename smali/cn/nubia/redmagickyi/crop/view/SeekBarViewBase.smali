.class Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;
.super Landroid/view/View;
.source "SeekBarViewBase.java"


# static fields
.field protected static final DEFAULT_TOTAL_TIME:I = 0x1

.field private static final MIN_CLIP_BASE_WIDTH:I = 0x14

.field private static final MIN_CLIP_TIME:I = 0x7530

.field protected static final SCRUBBER_CURRENT:I = 0x1

.field protected static final SCRUBBER_END:I = 0x3

.field protected static final SCRUBBER_MOVE:I = 0x4

.field protected static final SCRUBBER_NONE:I = 0x0

.field protected static final SCRUBBER_START:I = 0x2


# instance fields
.field protected mBorder:I

.field protected mClipEndTime:J

.field protected mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipLeftCurrentX:I

.field protected mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipLeftDrawableW:I

.field protected mClipLeftX:I

.field protected mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipRightCurrentX:I

.field protected mClipRightDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClipRightDrawableW:I

.field protected mClipRightX:I

.field protected mClipStartTime:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentTime:J

.field protected mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field protected mIsClip:Z

.field protected mIsClipPlay:Z

.field protected mIsWallPaper:Z

.field protected mLongEndTime:J

.field protected mLongPressMaxThumbWidth:I

.field protected mLongPressMaxW:I

.field protected mLongPressTime:J

.field protected mLongPressX:I

.field protected mLongStartTime:J

.field private mMinClipTime:F

.field private mMinClipVerticalW:I

.field protected mMinClipW:I

.field protected mNormalMaxThumbWidth:I

.field protected mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPlayedCurrentX:I

.field protected mPlayedDrawableW:I

.field protected mPlayedX:I

.field protected mPrePlayedX:I

.field protected mPressedThumb:I

.field protected mScreenWidth:I

.field protected mThumbnailHeight:I

.field protected mThumbnailWidth:I

.field protected mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPressedThumb:I

    .line 48
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    .line 49
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    .line 50
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    .line 52
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    .line 53
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipVerticalW:I

    const/4 p3, 0x0

    .line 54
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipTime:F

    .line 58
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    .line 60
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressMaxThumbWidth:I

    .line 62
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    .line 64
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPrePlayedX:I

    .line 66
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 68
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 70
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressX:I

    .line 71
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressMaxW:I

    .line 72
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedCurrentX:I

    .line 73
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    .line 74
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mCurrentTime:J

    const-wide/16 v2, 0x1

    .line 77
    iput-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    .line 78
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipStartTime:J

    .line 79
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipEndTime:J

    .line 81
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressTime:J

    .line 82
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongStartTime:J

    .line 83
    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongEndTime:J

    .line 85
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    .line 86
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClipPlay:Z

    .line 88
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsWallPaper:Z

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->loadDrawable()V

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initDrawableWidth()V

    .line 95
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initPixel()V

    return-void
.end method

.method private drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 317
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 319
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v2, v3

    .line 321
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr v3, v4

    .line 317
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    return-void
.end method

.method private drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .line 335
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 337
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    add-int/2addr v2, v3

    .line 339
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr v3, v4

    .line 335
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    return-void
.end method

.method private initDrawableWidth()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    return-void
.end method

.method private initPixel()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->seekbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->seekbar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mThumbnailWidth:I

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->seekbar_thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mThumbnailHeight:I

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->seekbar_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    return-void
.end method

.method private isInClipEnd(II)Z
    .locals 2

    .line 164
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInClipMove(II)Z
    .locals 2

    .line 159
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    add-int/lit8 v0, v0, -0x1e

    if-gt p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInClipStart(II)Z
    .locals 2

    .line 154
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInPlayingPosition(II)Z
    .locals 2

    .line 149
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedCurrentX:I

    add-int/lit8 v1, v0, -0x1e

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadDrawable()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->fifty_four_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->seek_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->clip_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->clip_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->clip_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->clip_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->clip_invisiable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected calClipLeftTime()I
    .locals 7

    .line 200
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v0, v5

    .line 202
    iget-boolean v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsWallPaper:Z

    if-eqz v5, :cond_0

    int-to-long v4, v4

    .line 203
    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 204
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 206
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 207
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipEndTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v0, 0x3e8

    sub-long v0, v2, v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method protected calClipRightTime()I
    .locals 7

    .line 220
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v0, v2

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v0, v5

    .line 222
    iget-boolean v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsWallPaper:Z

    if-eqz v5, :cond_0

    int-to-long v4, v4

    .line 223
    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getMinClipWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 224
    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    const-wide/16 v5, 0x1

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 226
    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 227
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipStartTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 232
    :cond_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method protected drawClipInvisiable(Landroid/graphics/Canvas;)V
    .locals 8

    .line 346
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    .line 348
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v0

    .line 350
    :goto_0
    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_1

    .line 351
    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    add-int/2addr v2, v5

    .line 352
    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mScreenWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 355
    :goto_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    add-int/2addr v5, v6

    .line 359
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    add-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mThumbnailHeight:I

    add-int/2addr v6, v7

    .line 355
    invoke-virtual {v4, v0, v5, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    .line 363
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v1

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    add-int/2addr v1, v4

    .line 365
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mThumbnailHeight:I

    add-int/2addr v4, v5

    .line 361
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawClipLeft(Landroid/graphics/Canvas;)V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->drawClipLeft(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawClipRight(Landroid/graphics/Canvas;)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipNormalRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->drawClipRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected drawPlayedBar(Landroid/graphics/Canvas;)V
    .locals 6

    .line 370
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    .line 375
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    add-int/2addr v3, v4

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr v4, v5

    .line 373
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClipPlay:Z

    if-eqz v0, :cond_2

    .line 379
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    :cond_2
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedCurrentX:I

    return-void
.end method

.method protected drawRect(Landroid/graphics/Canvas;)V
    .locals 6

    .line 291
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 292
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    const/16 v1, 0x33

    const/16 v2, 0xac

    const/16 v3, 0xff

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v5, v3, v3, v2, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v5, v3, v3, v2, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 297
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    int-to-float v2, v1

    .line 304
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr v1, v0

    int-to-float v4, v1

    .line 305
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mBorder:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    int-to-float p0, v0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, p0

    .line 304
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getMinClipWidth()I
    .locals 5

    .line 401
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 402
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    mul-int/lit16 p0, p0, 0x3e8

    long-to-int v0, v0

    div-int/2addr p0, v0

    return p0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipVerticalW:I

    return p0

    .line 408
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/mediaeditor/utils/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 409
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipVerticalW:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 410
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipTime:F

    .line 412
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    long-to-float p0, v1

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected getPosition(J)J
    .locals 2

    .line 192
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected getTime(J)J
    .locals 4

    .line 188
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method protected initPosition()V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mCurrentTime:J

    invoke-virtual {p0, v1, v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPosition(J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedX:I

    .line 132
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressX:I

    return-void
.end method

.method protected initThumbnailsMaxWidth()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 138
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mScreenWidth:I

    .line 142
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressMaxThumbWidth:I

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mLongPressMaxW:I

    .line 143
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedDrawableW:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    .line 145
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipVerticalW:I

    return-void
.end method

.method protected isInClipArea(II)Z
    .locals 2

    .line 182
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mHeight:I

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isScreenPortrait()Z
    .locals 1

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_6

    .line 242
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initThumbnailsMaxWidth()V

    .line 243
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initPosition()V

    .line 244
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz p1, :cond_5

    .line 245
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    const-wide/16 p3, 0x0

    if-eq p1, p2, :cond_2

    .line 246
    iget-wide p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    .line 247
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    goto :goto_0

    .line 249
    :cond_0
    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, p3

    .line 250
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 252
    :goto_0
    iget-wide p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 253
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    goto/16 :goto_2

    .line 256
    :cond_1
    iget p5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    goto :goto_2

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    .line 262
    iget-wide p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipStartTime:J

    cmp-long p3, p1, p3

    if-nez p3, :cond_3

    .line 263
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 264
    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    goto :goto_1

    .line 266
    :cond_3
    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long p3, p3

    mul-long/2addr p1, p3

    iget-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    div-long/2addr p1, p3

    .line 267
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 269
    :goto_1
    iget-wide p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipEndTime:J

    iget-wide p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    cmp-long p5, p1, p3

    if-nez p5, :cond_4

    .line 270
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 272
    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    goto :goto_2

    .line 274
    :cond_4
    iget p5, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mNormalMaxThumbWidth:I

    int-to-long v0, p5

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    .line 275
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iget p3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftDrawableW:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 279
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    goto :goto_3

    .line 281
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 282
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 283
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getMinClipWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mMinClipW:I

    :cond_6
    :goto_3
    return-void
.end method

.method protected resumeOriginal()V
    .locals 3

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPrePlayedX:I

    .line 386
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mPlayedCurrentX:I

    .line 387
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftCurrentX:I

    .line 388
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightCurrentX:I

    const-wide/16 v1, 0x0

    .line 389
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mCurrentTime:J

    .line 390
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipStartTime:J

    .line 391
    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mTotalTime:J

    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipEndTime:J

    .line 392
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    .line 393
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClipPlay:Z

    .line 394
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipLeftX:I

    .line 395
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightDrawableW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mClipRightX:I

    .line 396
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initPosition()V

    .line 397
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->initThumbnailsMaxWidth()V

    return-void
.end method

.method protected whichScrubber(II)I
    .locals 1

    .line 169
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isInPlayingPosition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClipPlay:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 171
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isInClipStart(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    .line 173
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isInClipEnd(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    return p0

    .line 175
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->mIsClip:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarViewBase;->isInClipMove(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
