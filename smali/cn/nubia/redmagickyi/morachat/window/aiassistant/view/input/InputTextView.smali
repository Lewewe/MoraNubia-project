.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;
.super Landroid/view/View;
.source "InputTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;

.field private isLargeIcon:Z

.field private paint:Landroid/graphics/Paint;

.field private scrollOffset:F

.field private text:Ljava/lang/String;

.field private toLeftGradient:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon:Z

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->initView()V

    return-void
.end method

.method private calculateScrollingLen()I
    .locals 2

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private initView()V
    .locals 9

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon:Z

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon(Z)V

    .line 44
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->toLeftGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private measureScrollOffset()F
    .locals 2

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->calculateScrollingLen()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getMaxWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->scrollOffset:F

    return v0
.end method

.method private startScroll()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->measureScrollOffset()F

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->invalidate()V

    return-void
.end method

.method private stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->scrollOffset:F

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_232_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;->getMaxWidth()I

    move-result v0

    .line 90
    :goto_0
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    float-to-int v0, p0

    :goto_1
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getViewWidth()I
    .locals 1

    .line 132
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->calculateScrollingLen()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getMaxWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public isLargeIcon(Z)V
    .locals 4

    .line 62
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->isLargeIcon:Z

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 66
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    :goto_1
    const-string p1, "#99000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 67
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->measureScrollOffset()F

    return-void
.end method

.method public isScrolling()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 77
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->scrollOffset:F

    neg-float v2, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->toLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCallback(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView$Callback;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->stopScroll()V

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->text:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/input/InputTextView;->startScroll()V

    return-void
.end method
