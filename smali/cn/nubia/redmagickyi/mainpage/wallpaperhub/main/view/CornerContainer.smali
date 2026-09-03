.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;
.super Landroid/widget/RelativeLayout;
.source "CornerContainer.java"


# instance fields
.field private borderPath:Landroid/graphics/Path;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->setWillNotDraw(Z)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->wallpaperhub_child_item_image_corner:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->radius:F

    return-void
.end method

.method private setupPath()V
    .locals 4

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->borderPath:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->borderPath:Landroid/graphics/Path;

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->radius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, p0, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->borderPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->setupPath()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->radius:F

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->setupPath()V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/view/CornerContainer;->invalidate()V

    return-void
.end method
