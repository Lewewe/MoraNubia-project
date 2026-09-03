.class public Lcn/nubia/redmagickyi/view/TextProgressBar;
.super Landroid/widget/ProgressBar;
.source "TextProgressBar.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private text:Ljava/lang/String;

.field private textBackgroundColor:I

.field private textProgressColor:I

.field private textSizePx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textSizePx:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textProgressColor:I

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textSizePx:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textProgressColor:I

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textSizePx:F

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textProgressColor:I

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->init()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 6

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 117
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    .line 122
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v2, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->setIndeterminate(Z)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textSizePx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/TextProgressBar;->drawText(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method

.method public declared-synchronized setProgressAndText(ILjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 60
    :try_start_0
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressAndText(ILjava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 71
    invoke-super {p0, p1, p3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->text:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/TextProgressBar;->invalidate()V

    return-void
.end method

.method public setTextBackgroundColor(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textBackgroundColor:I

    return-void
.end method

.method public setTextProgressColor(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textProgressColor:I

    return-void
.end method

.method public setTextSizePx(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/view/TextProgressBar;->textSizePx:F

    return-void
.end method
