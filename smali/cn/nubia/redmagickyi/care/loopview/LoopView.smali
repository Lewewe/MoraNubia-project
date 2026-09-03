.class public Lcn/nubia/redmagickyi/care/loopview/LoopView;
.super Landroid/view/View;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;
    }
.end annotation


# static fields
.field private static final CENTER_TEXT_SIZE:I

.field private static final DEFAULT_LINE_SPACE:F = 4.0f

.field private static final DEFAULT_TEXT_SIZE:I

.field private static final DEFAULT_VISIBIE_ITEMS:I = 0x5


# instance fields
.field centerTextColor:I

.field centertextSize:I

.field change:I

.field private context:Landroid/content/Context;

.field dividerColor:I

.field drawingStrings:[Ljava/lang/String;

.field firstLineY:I

.field private flingGestureDetector:Landroid/view/GestureDetector;

.field halfCircumference:I

.field handler:Landroid/os/Handler;

.field initPosition:I

.field isLoop:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field itemsVisibleCount:I

.field lineSpacingMultiplier:F

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mOffset:I

.field maxTextHeight:I

.field measuredHeight:I

.field measuredWidth:I

.field onItemSelectedListener:Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;

.field outerTextColor:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paintCenterText:Landroid/graphics/Paint;

.field private paintIndicator:Landroid/graphics/Paint;

.field private paintOuterText:Landroid/graphics/Paint;

.field preCurrentIndex:I

.field private previousY:F

.field radius:I

.field private scaleX:F

.field secondLineY:I

.field private selectedItem:I

.field startTime:J

.field private tempRect:Landroid/graphics/Rect;

.field textSize:I

.field totalScrollY:I

.field zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->DEFAULT_TEXT_SIZE:I

    .line 32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->CENTER_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->startTime:J

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->startTime:J

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 150
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 29
    iput p3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    .line 54
    new-instance p3, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p3}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    const/4 p3, 0x0

    .line 94
    iput p3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->startTime:J

    .line 98
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 155
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 483
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 484
    iget p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 485
    iget p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    iget p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paddingLeft:I

    sub-int/2addr p2, p0

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    return p2
.end method

.method private initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 159
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->context:Landroid/content/Context;

    .line 160
    new-instance v0, Lcn/nubia/redmagickyi/care/loopview/MessageHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/loopview/MessageHandler;-><init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->handler:Landroid/os/Handler;

    .line 161
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/nubia/redmagickyi/care/loopview/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/loopview/LoopViewGestureListener;-><init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->flingGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 164
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 165
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_textsize:I

    sget v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->DEFAULT_TEXT_SIZE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    .line 167
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_textsize:I

    sget v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->CENTER_TEXT_SIZE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centertextSize:I

    .line 168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centertextSize:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centertextSize:I

    .line 169
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_lineSpace:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    .line 170
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_centerTextColor:I

    const/16 v0, -0x5a00

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centerTextColor:I

    .line 171
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_outerTextColor:I

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->outerTextColor:I

    .line 172
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_dividerTextColor:I

    const v0, 0xc5c5c5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->dividerColor:I

    .line 173
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_itemsVisibleCount:I

    const/4 v0, 0x5

    .line 174
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    .line 175
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 176
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    .line 178
    :cond_0
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->androidWheelView_awv_isLoop:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    .line 183
    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    const/4 p1, -0x1

    .line 184
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    .line 186
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 3

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    .line 206
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->outerTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    .line 212
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    .line 219
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->dividerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private remeasure()V
    .locals 7

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    .line 231
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredHeight:I

    .line 233
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paddingLeft:I

    .line 238
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paddingRight:I

    .line 240
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    const-string/jumbo v1, "\u661f\u671f"

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 244
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredHeight:I

    int-to-double v1, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->halfCircumference:I

    int-to-float v1, v1

    .line 246
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    .line 248
    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->radius:I

    int-to-float v5, v0

    int-to-float v6, v1

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 249
    iput v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->firstLineY:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 250
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->secondLineY:I

    .line 251
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 252
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    goto :goto_0

    .line 255
    :cond_2
    iput v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    .line 259
    :cond_3
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public final getSelectedItem()I
    .locals 0

    .line 331
    iget p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->selectedItem:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->change:I

    .line 381
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    .line 383
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-gez v2, :cond_1

    .line 385
    iput v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    .line 387
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 388
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    .line 394
    :cond_3
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 395
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    .line 399
    :cond_4
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    rem-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    .line 402
    :goto_1
    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    if-ge v2, v3, :cond_a

    .line 403
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->preCurrentIndex:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    sub-int/2addr v4, v3

    .line 404
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    if-eqz v3, :cond_7

    :goto_2
    if-gez v4, :cond_5

    .line 406
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_2

    .line 408
    :cond_5
    :goto_3
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_6

    .line 409
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_3

    .line 411
    :cond_6
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    goto :goto_4

    .line 412
    :cond_7
    const-string v3, ""

    if-gez v4, :cond_8

    .line 413
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aput-object v3, v4, v2

    goto :goto_4

    .line 414
    :cond_8
    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_9

    .line 415
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aput-object v3, v4, v2

    goto :goto_4

    .line 417
    :cond_9
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 421
    :cond_a
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paddingLeft:I

    int-to-float v4, v2

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->firstLineY:I

    int-to-float v5, v2

    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    int-to-float v6, v3

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paddingLeft:I

    int-to-float v4, v2

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->secondLineY:I

    int-to-float v5, v2

    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    int-to-float v6, v3

    int-to-float v7, v2

    iget-object v8, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v1

    .line 425
    :goto_5
    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    if-ge v2, v3, :cond_10

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 427
    iget v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    mul-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v3

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 428
    iget v8, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->halfCircumference:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    cmpl-double v6, v4, v6

    if-gez v6, :cond_f

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_b

    goto/16 :goto_7

    .line 432
    :cond_b
    iget v6, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->radius:I

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->radius:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    int-to-float v8, v6

    .line 433
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 435
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->firstLineY:I

    if-gt v6, v4, :cond_c

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_c

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->firstLineY:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 439
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v7, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 443
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->firstLineY:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 444
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 447
    :cond_c
    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->secondLineY:I

    if-gt v6, v5, :cond_d

    iget v7, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    add-int/2addr v7, v6

    if-lt v7, v5, :cond_d

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->secondLineY:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 451
    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v7, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->secondLineY:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 457
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_d
    if-lt v6, v4, :cond_e

    .line 460
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    add-int/2addr v4, v6

    if-gt v4, v5, :cond_e

    .line 462
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v1, v1, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 463
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 465
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->selectedItem:I

    goto :goto_6

    .line 468
    :cond_e
    iget v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v1, v1, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 469
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 472
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 430
    :cond_f
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_10
    return-void
.end method

.method protected final onItemSelected()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->onItemSelectedListener:Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;-><init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 496
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 490
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 491
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->remeasure()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->flingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 502
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-nez v0, :cond_1

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 537
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->radius:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    int-to-float p1, v0

    div-float/2addr v2, p1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->radius:I

    int-to-double v7, p1

    mul-double/2addr v5, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    float-to-double v7, p1

    add-double/2addr v5, v7

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int p1, v5

    .line 540
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 541
    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x78

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 544
    sget-object p1, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->DAGGLE:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->smoothScroll(Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;)V

    goto :goto_0

    .line 546
    :cond_0
    sget-object p1, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->CLICK:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->smoothScroll(Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;)V

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 550
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 515
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->previousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->previousY:F

    .line 518
    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    .line 520
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    if-nez p1, :cond_5

    .line 521
    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 522
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 524
    iget v1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3

    float-to-int p1, p1

    .line 525
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    goto :goto_1

    :cond_3
    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    float-to-int p1, v0

    .line 527
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    goto :goto_1

    .line 506
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->startTime:J

    .line 507
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->cancelFuture()V

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->previousY:F

    .line 509
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 510
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 555
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->invalidate()V

    return v3
.end method

.method protected final scrollBy(F)V
    .locals 7

    .line 277
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->cancelFuture()V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v1, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;-><init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;F)V

    const/16 p1, 0xa

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->centerTextColor:I

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 367
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    const/4 p1, 0x0

    .line 368
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    .line 369
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    .line 370
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->dividerColor:I

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setInitPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 312
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 315
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    .line 326
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->remeasure()V

    .line 327
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->invalidate()V

    return-void
.end method

.method public setItemsVisibleCount(I)V
    .locals 1

    .line 195
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    if-eq p1, v0, :cond_1

    .line 199
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->itemsVisibleCount:I

    .line 200
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->drawingStrings:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 109
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    :cond_0
    return-void
.end method

.method public final setListener(Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->onItemSelectedListener:Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;

    return-void
.end method

.method public setNotLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    return-void
.end method

.method public setOuterTextColor(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->outerTextColor:I

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 352
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scaleX:F

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 306
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->textSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method smoothScroll(Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;)V
    .locals 7

    .line 263
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->cancelFuture()V

    .line 264
    sget-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->FLING:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;->DAGGLE:Lcn/nubia/redmagickyi/care/loopview/LoopView$ACTION;

    if-ne p1, v0, :cond_2

    .line 265
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 266
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 268
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    goto :goto_0

    :cond_1
    neg-int p1, v0

    .line 270
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    .line 273
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v1, Lcn/nubia/redmagickyi/care/loopview/SmoothScrollTimerTask;

    iget p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mOffset:I

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/care/loopview/SmoothScrollTimerTask;-><init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;I)V

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method
