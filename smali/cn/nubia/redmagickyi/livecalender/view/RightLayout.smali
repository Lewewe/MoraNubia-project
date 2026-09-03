.class public Lcn/nubia/redmagickyi/livecalender/view/RightLayout;
.super Landroid/widget/FrameLayout;
.source "RightLayout.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/util/Statement$Call;


# instance fields
.field private fullRoundPath:Landroid/graphics/Path;

.field private radius:F

.field private statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->setWillNotDraw(Z)V

    .line 37
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->radius:F

    .line 38
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/util/Statement;->FUTURE:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->fullRoundPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->fullRoundPath:Landroid/graphics/Path;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 57
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget v6, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->radius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-eq p1, v0, :cond_0

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    .line 45
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->invalidate()V

    :cond_0
    return-void
.end method
