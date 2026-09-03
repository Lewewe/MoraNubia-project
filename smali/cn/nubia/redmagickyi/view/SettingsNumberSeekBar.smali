.class public Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;
.super Landroid/widget/SeekBar;
.source "SettingsNumberSeekBar.java"


# static fields
.field private static final ORIENTATION_BOTTOM:I = 0x2

.field private static final ORIENTATION_CENTER:I = 0x3

.field private static final ORIENTATION_TOP:I = 0x1


# instance fields
.field private isRtl:Z

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBgHeight:F

.field private mBgWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextBaseLineY:F

.field private mTextColor:I

.field private mTextOrientation:I

.field private mTextSize:F

.field private mTextWidth:F

.field private maxProgress:Ljava/lang/Integer;

.field private minProgress:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->minProgress:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->maxProgress:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->isRtl:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->isRtl:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static decodeBitmapFromResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 262
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 264
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private getTextLocation()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getDisplayProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mText:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextWidth:F

    .line 254
    iget v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextBaseLineY:F

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->NumberSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move p3, v1

    :goto_0
    const/4 v0, 0x1

    if-ge p3, p2, :cond_4

    .line 107
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 108
    sget v3, Lcn/nubia/redmagickyi/main/R$styleable;->NumberSeekBar_seektextColor:I

    if-ne v2, v3, :cond_0

    const/4 v0, -0x1

    .line 109
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextColor:I

    goto :goto_1

    .line 110
    :cond_0
    sget v3, Lcn/nubia/redmagickyi/main/R$styleable;->NumberSeekBar_seektextSize:I

    if-ne v2, v3, :cond_1

    const/high16 v0, 0x41700000    # 15.0f

    .line 111
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextSize:F

    goto :goto_1

    .line 112
    :cond_1
    sget v3, Lcn/nubia/redmagickyi/main/R$styleable;->NumberSeekBar_seektextBackground:I

    if-ne v2, v3, :cond_2

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_silder_settings:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->decodeBitmapFromResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    goto :goto_1

    .line 116
    :cond_2
    sget v3, Lcn/nubia/redmagickyi/main/R$styleable;->NumberSeekBar_seektextOrientation:I

    if-ne v2, v3, :cond_3

    .line 117
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextOrientation:I

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextOrientation:I

    const/4 p2, 0x2

    if-ne p1, v0, :cond_5

    .line 132
    iget p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    div-int/2addr p1, p2

    iget p3, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    add-int/lit8 p3, p3, 0x5

    iget v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    div-int/2addr v0, p2

    invoke-virtual {p0, p1, p3, v0, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    if-ne p1, p2, :cond_6

    .line 135
    iget p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    div-int/2addr p1, p2

    iget p3, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    div-int/2addr p3, p2

    iget p2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p0, p1, v1, p3, p2}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setPadding(IIII)V

    goto :goto_2

    .line 138
    :cond_6
    iget p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    div-int/2addr p1, p2

    iget p3, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    div-int/2addr p3, p2

    invoke-virtual {p0, p1, v1, p3, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setPadding(IIII)V

    .line 141
    :goto_2
    new-instance p1, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;-><init>(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getDisplayProgress()I
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getTextLocation()V

    .line 213
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 216
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->isRtl:Z

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getProgress()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getProgress()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    .line 223
    :goto_0
    iget v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextOrientation:I

    const/4 v2, 0x2

    const/high16 v3, 0x41200000    # 10.0f

    if-ne v1, v2, :cond_1

    .line 224
    iget v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    add-float/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 231
    :goto_2
    iget v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgWidth:F

    iget v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 232
    iget v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mTextBaseLineY:F

    add-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBgHeight:F

    float-to-double v6, v2

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 235
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->invalidate()V

    .line 242
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->maxProgress:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->minProgress:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMin(I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(IZ)V
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 205
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    return-void
.end method
