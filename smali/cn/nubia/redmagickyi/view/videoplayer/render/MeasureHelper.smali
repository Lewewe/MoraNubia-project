.class public Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# static fields
.field public static final SCREEN_SCALE_16_9:I = 0x1

.field public static final SCREEN_SCALE_4_3:I = 0x2

.field public static final SCREEN_SCALE_AUTO:I = 0x6

.field public static final SCREEN_SCALE_CENTER_CROP:I = 0x5

.field public static final SCREEN_SCALE_DEFAULT:I = 0x0

.field public static final SCREEN_SCALE_MATCH_PARENT:I = 0x3

.field public static final SCREEN_SCALE_ORIGINAL:I = 0x4


# instance fields
.field private mCurrentScreenScale:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doMeasure(II)[I
    .locals 8

    .line 43
    iget v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/2addr p1, p2

    sub-int p2, p1, p2

    sub-int/2addr p1, p2

    .line 50
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    iget v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoHeight:I

    if-eqz v2, :cond_f

    iget v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoWidth:I

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 57
    :cond_2
    iget p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mCurrentScreenScale:I

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-ne p0, v4, :cond_4

    if-lt v3, v2, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    move p0, v5

    :cond_4
    :goto_0
    const/4 v4, 0x1

    if-eq p0, v4, :cond_c

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq p0, v4, :cond_a

    if-eq p0, v7, :cond_e

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_7

    mul-int p0, v3, v1

    mul-int p1, v0, v2

    if-ge p0, p1, :cond_5

    mul-int/2addr v3, v1

    .line 71
    div-int p1, v3, v2

    goto :goto_1

    :cond_5
    mul-int p0, v3, v1

    mul-int p1, v0, v2

    if-le p0, p1, :cond_6

    mul-int/2addr v2, v0

    .line 73
    div-int p2, v2, v3

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_1
    move p2, v1

    goto :goto_3

    :cond_7
    mul-int p0, v3, v1

    mul-int p1, v0, v2

    if-le p0, p1, :cond_8

    mul-int/2addr v3, v1

    .line 100
    div-int p1, v3, v2

    goto :goto_1

    :cond_8
    mul-int/2addr v2, v0

    .line 102
    div-int p2, v2, v3

    goto :goto_2

    :cond_9
    move p2, v2

    move p1, v3

    goto :goto_3

    .line 88
    :cond_a
    div-int/lit8 p0, v0, 0x4

    mul-int/lit8 p2, p0, 0x3

    if-le v1, p2, :cond_b

    goto :goto_2

    .line 91
    :cond_b
    div-int/lit8 p0, v1, 0x3

    mul-int/lit8 p1, p0, 0x4

    goto :goto_1

    .line 81
    :cond_c
    div-int/lit8 p0, v0, 0x10

    mul-int/lit8 p2, p0, 0x9

    if-le v1, p2, :cond_d

    :goto_2
    move p1, v0

    goto :goto_3

    .line 84
    :cond_d
    div-int/lit8 p0, v1, 0x9

    mul-int/lit8 p1, p0, 0x10

    goto :goto_1

    .line 106
    :cond_e
    :goto_3
    filled-new-array {p1, p2}, [I

    move-result-object p0

    return-object p0

    .line 54
    :cond_f
    :goto_4
    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method public setScreenScale(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mCurrentScreenScale:I

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoRotationDegree:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoWidth:I

    .line 32
    iput p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/render/MeasureHelper;->mVideoHeight:I

    return-void
.end method
