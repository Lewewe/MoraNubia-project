.class Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.source "NBTargetIcon.java"


# instance fields
.field final CLIP_SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClipRadius:I

.field private mClipScale:F

.field private mFirstBitmap:Landroid/graphics/Bitmap;

.field private mIsClipping:Z

.field private mScale:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;

    const-class v0, Ljava/lang/Float;

    const-string v1, "NBTargetIcon_Scale"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->SCALE:Landroid/util/Property;

    .line 39
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$2;

    const-class v0, Ljava/lang/Float;

    const-string v1, "NBTargetIcon_ClipScale"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$2;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->CLIP_SCALE:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 114
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionX:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 115
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionY:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 117
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mIsClipping:Z

    if-eqz v2, :cond_0

    .line 118
    iget v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mClipRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mClipScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 119
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 121
    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionX:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionY:I

    int-to-float v5, v5

    int-to-float v2, v2

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    iget v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionX:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mPositionY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v2, 0x1

    .line 130
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 132
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method getClipScale()F
    .locals 0

    .line 98
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mClipScale:F

    return p0
.end method

.method getScale()F
    .locals 0

    .line 87
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    return p0
.end method

.method protected initDefaultValue()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->initDefaultValue()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    return-void
.end method

.method protected initDrawable()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_ringing_target_icon_fg_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->redmagic_call_white_circle_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mFirstBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mClipRadius:I

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected recycle()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method setClipScale(F)V
    .locals 1

    .line 102
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mClipScale:F

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method

.method setIsClipping(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mIsClipping:Z

    return-void
.end method

.method setScale(F)V
    .locals 1

    .line 91
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mScale:F

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method
