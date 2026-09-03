.class public Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SpeechBar.java"


# static fields
.field private static final PROGRESS_NUM:I = 0xc


# instance fields
.field private progress:D

.field private progressHeight:F

.field private progressSelectedPaint:Landroid/graphics/Paint;

.field private progressSpacing:F

.field private progressUnSelectedPaint:Landroid/graphics/Paint;

.field private progressWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->init()V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 13

    .line 76
    iget-wide v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progress:D

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    .line 80
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 81
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressWidth:F

    iget v5, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressSpacing:F

    add-float/2addr v5, v4

    int-to-float v6, v3

    mul-float/2addr v5, v6

    add-float v7, v5, v4

    .line 84
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressHeight:F

    const/4 v6, 0x0

    add-float v8, v4, v6

    .line 85
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v4, v12

    move v9, v2

    move v10, v2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 86
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressSelectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressUnSelectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v12, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setWillNotDraw(Z)V

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressSpacing:F

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressWidth:F

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressHeight:F

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressSelectedPaint:Landroid/graphics/Paint;

    .line 47
    const-string v2, "#FFF9F9FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressUnSelectedPaint:Landroid/graphics/Paint;

    .line 49
    const-string p0, "#33FFFFFF"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->drawProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 54
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 55
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressWidth:F

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressSpacing:F

    const/high16 v0, 0x41300000    # 11.0f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 56
    iget p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progressHeight:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->progress:D

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->invalidate()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->postInvalidate()V

    :goto_0
    return-void
.end method
