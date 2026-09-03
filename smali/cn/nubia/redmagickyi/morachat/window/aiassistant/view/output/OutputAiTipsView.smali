.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;
.super Landroid/view/View;
.source "OutputAiTipsView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private canScrollEnd:Z

.field private counter:Lcn/nubia/redmagickyi/util/Counter;

.field private fadePaint:Landroid/graphics/Paint;

.field private fadeWidth:F

.field private gravity:I

.field private isLargeIcon:Z

.field private isScrolling:Z

.field private mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;

.field private paint:Landroid/graphics/Paint;

.field private percent:F

.field private scrollToLeft:Z

.field private strokePaint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->scrollToLeft:Z

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon:Z

    const/4 p2, 0x5

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->gravity:I

    .line 37
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->canScrollEnd:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isScrolling:Z

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->initView()V

    return-void
.end method

.method private applyFadeEffect(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getWidth()I

    move-result v1

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getHeight()I

    move-result v2

    .line 147
    iget v3, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadeWidth:F

    int-to-float v1, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 149
    iget v4, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->percent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    if-lez v4, :cond_0

    .line 151
    new-instance v4, Landroid/graphics/LinearGradient;

    filled-new-array {v14, v15}, [I

    move-result-object v10

    new-array v11, v13, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v4

    move v8, v3

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 157
    iget-object v5, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v9, v2

    .line 158
    iget-object v10, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    :cond_0
    new-instance v12, Landroid/graphics/LinearGradient;

    sub-float v3, v1, v3

    filled-new-array {v15, v14}, [I

    move-result-object v9

    new-array v10, v13, [F

    fill-array-data v10, :array_1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v12

    move v5, v3

    move v7, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 168
    iget-object v4, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v8, v2

    .line 169
    iget-object v9, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculateScrollingLen()I
    .locals 2

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 252
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private initView()V
    .locals 4

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    .line 58
    const-string v2, "#8AFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    .line 60
    const-string v2, "#45000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon:Z

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon(Z)V

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->counter:Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method private startScroll()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->calculateScrollingLen()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->shouldScroll()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v0, v1

    .line 213
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;

    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;->onScrollBegin()V

    .line 216
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->counter:Lcn/nubia/redmagickyi/util/Counter;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method private stopScroll()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->percent:F

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->canScrollEnd:Z

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isScrolling:Z

    .line 231
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 5

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    .line 182
    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_232_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    float-to-int v0, p0

    :goto_0
    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 256
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->calculateScrollingLen()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getMaxWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public isLargeIcon(Z)V
    .locals 2

    .line 85
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isLargeIcon:Z

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 88
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const p1, 0x3f2aaaab

    :goto_1
    mul-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->fadeWidth:F

    .line 91
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->calculateScrollingLen()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    return-void
.end method

.method public isScrolling()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isScrolling:Z

    return p0
.end method

.method public onCounterValueChanged(FZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 189
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;

    if-eqz p1, :cond_0

    .line 190
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->canScrollEnd:Z

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;->onScrollEnd(Z)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->stopScroll()V

    goto :goto_0

    .line 194
    :cond_1
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->percent:F

    .line 195
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->invalidate()V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->percent:F

    mul-float/2addr v0, v1

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->shouldScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    .line 113
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->scrollToLeft:Z

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    neg-float v0, v0

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->applyFadeEffect(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 129
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->gravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getWidth()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getWidth()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->strokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->gravity:I

    .line 175
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->invalidate()V

    return-void
.end method

.method public setOnScrollStateChangedListener(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView$OnScrollStateChangedListener;

    return-void
.end method

.method public setScrollToLeft(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->scrollToLeft:Z

    return-void
.end method

.method public setText(Ljava/lang/String;JZ)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->stopScroll()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->isScrolling:Z

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->text:Ljava/lang/String;

    .line 78
    iput-boolean p4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->canScrollEnd:Z

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->counter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    .line 80
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->startScroll()V

    return-void
.end method

.method public shouldScroll()Z
    .locals 1

    .line 239
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->textWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputAiTipsView;->getMaxWidth()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
