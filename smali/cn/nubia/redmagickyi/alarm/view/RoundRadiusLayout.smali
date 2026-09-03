.class public Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;
.super Landroid/widget/FrameLayout;
.source "RoundRadiusLayout.java"


# instance fields
.field private mRadius:I

.field private mRadiusList:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadius:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadiusList:[F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadiusList:[F

    if-nez v2, :cond_0

    .line 40
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 46
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(FFFF)V
    .locals 2

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadiusList:[F

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->mRadius:I

    return-void
.end method
