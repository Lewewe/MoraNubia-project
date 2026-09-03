.class Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.source "NBTargetCircle.java"


# instance fields
.field final OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOffsetY:I

.field private mScale:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle$1;

    const-class v0, Ljava/lang/Float;

    const-string v1, "NBTargetCircle_Scale"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->SCALE:Landroid/util/Property;

    .line 36
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle$2;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "NBTargetCircle_Offset"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle$2;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->OFFSET:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .line 97
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mPositionY:I

    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mOffsetY:I

    add-int/2addr v0, v1

    .line 98
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mPositionX:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 99
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 101
    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mPositionX:I

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {p1, v3, v3, v4, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method getOffsetY()I
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mOffsetY:I

    return p0
.end method

.method getScale()F
    .locals 0

    .line 71
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    return p0
.end method

.method protected initDefaultValue()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->initDefaultValue()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mIsVisibility:Z

    return-void
.end method

.method protected initDrawable()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_ringing_target_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected recycle()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method setOffsetY(I)V
    .locals 1

    .line 87
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mOffsetY:I

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    .line 89
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mOffsetY:I

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method

.method setScale(F)V
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mScale:F

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mOffsetY:I

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method
