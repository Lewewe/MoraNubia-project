.class public abstract Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.super Ljava/lang/Object;
.source "BaseNBIconCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mIsVisibility:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->initDrawable()V

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->initDefaultValue()V

    return-void
.end method

.method protected static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 90
    :goto_0
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 91
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method protected static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 74
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v3, p0, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    int-to-float p0, v0

    int-to-float v0, v1

    .line 80
    invoke-virtual {v3, p1, p0, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method


# virtual methods
.method protected abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getPositionY()I
    .locals 0

    .line 47
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mPositionY:I

    return p0
.end method

.method protected initDefaultValue()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mIsVisibility:Z

    return-void
.end method

.method protected abstract initDrawable()V
.end method

.method public isVisibility()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mIsVisibility:Z

    return p0
.end method

.method protected abstract recycle()V
.end method

.method public redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mIsVisibility:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setPositionXY(II)V
    .locals 0

    .line 51
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mPositionX:I

    .line 52
    iput p2, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mPositionY:I

    return-void
.end method

.method public setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->mIsVisibility:Z

    return-void
.end method
