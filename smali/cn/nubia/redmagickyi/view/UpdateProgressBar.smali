.class public Lcn/nubia/redmagickyi/view/UpdateProgressBar;
.super Landroid/widget/ProgressBar;
.source "UpdateProgressBar.java"


# instance fields
.field private paintMain:Landroid/graphics/Paint;

.field private paintSub:Landroid/graphics/Paint;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private textBackgroundColor:I

.field private textMain:Ljava/lang/String;

.field private textProgressColor:I

.field private textSizeMain:F

.field private textSizeSub:F

.field private textSub:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 26
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeMain:F

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeSub:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textProgressColor:I

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeMain:F

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeSub:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textProgressColor:I

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeMain:F

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeSub:F

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textProgressColor:I

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF4E3DA5:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->init()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 8

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 117
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 121
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 124
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 126
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    .line 127
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 130
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v4, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setIndeterminate(Z)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeMain:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintMain:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSizeSub:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->paintSub:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

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
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->drawText(Landroid/graphics/Canvas;)V
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

    .line 51
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
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

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method

.method public declared-synchronized setProgressAndText(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 61
    :try_start_0
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressAndText(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    .line 71
    :try_start_0
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 74
    invoke-super {p0, p1, p4}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textMain:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->textSub:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->invalidate()V

    return-void
.end method
