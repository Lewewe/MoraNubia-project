.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EdgeFadeRecyclerView.java"


# instance fields
.field private final dstOut:Landroid/graphics/PorterDuffXfermode;

.field private final fadePaint:Landroid/graphics/Paint;

.field private fadeWidthPx:F

.field private leftGradient:Landroid/graphics/LinearGradient;

.field private rightGradient:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->dstOut:Landroid/graphics/PorterDuffXfermode;

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private rebuildGradients(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-lez v1, :cond_1

    if-lez p2, :cond_1

    .line 112
    iget v2, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->leftGradient:Landroid/graphics/LinearGradient;

    .line 125
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v14, v1

    iget v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    sub-float v12, v14, v1

    const/high16 v17, -0x1000000

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->rightGradient:Landroid/graphics/LinearGradient;

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 113
    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->leftGradient:Landroid/graphics/LinearGradient;

    .line 114
    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->rightGradient:Landroid/graphics/LinearGradient;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 81
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v1, -0x1

    .line 85
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    .line 90
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->dstOut:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->leftGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    .line 94
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    iget v7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 99
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->rightGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_2

    .line 100
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    sub-float v4, v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->rebuildGradients(II)V

    return-void
.end method

.method public setFadeWidthPx(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->fadeWidthPx:F

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->rebuildGradients(II)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/EdgeFadeRecyclerView;->invalidate()V

    return-void
.end method
