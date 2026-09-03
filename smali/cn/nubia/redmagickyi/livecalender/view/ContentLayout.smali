.class public Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;
.super Landroid/widget/FrameLayout;
.source "ContentLayout.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/util/Statement$Call;


# static fields
.field private static final BG_COLORS_EXPIRED:[I

.field private static final BG_COLORS_FUTURE:[I

.field private static final BG_COLORS_NOW:[I

.field private static final BORDER_COLOR_EXPIRED:I

.field private static final BORDER_COLOR_FUTURE:I

.field private static final BORDER_COLOR_NOW:I


# instance fields
.field private bgColors:[I

.field private bgPaint:Landroid/graphics/Paint;

.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderWidth:F

.field private fullRoundPath:Landroid/graphics/Path;

.field private radius:F

.field private statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-string v0, "#B3FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FFCDCCD0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_EXPIRED:[I

    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FFFFE8E8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_NOW:[I

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFE8E8FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_FUTURE:[I

    .line 34
    const-string v0, "#258D8D95"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_EXPIRED:I

    .line 35
    const-string v0, "#FFFFCECE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_NOW:I

    .line 36
    const-string v0, "#FFCFCEFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_FUTURE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->setWillNotDraw(Z)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10p5_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->radius:F

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p4_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderWidth:F

    .line 57
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/util/Statement;->FUTURE:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgPaint:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderPaint:Landroid/graphics/Paint;

    .line 61
    iget p2, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v6, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 86
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 91
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget v6, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->radius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-eq p1, v0, :cond_2

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p1, v0, :cond_0

    .line 70
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_EXPIRED:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgColors:[I

    .line 71
    sget p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_EXPIRED:I

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderColor:I

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->NOW:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p1, v0, :cond_1

    .line 73
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_NOW:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgColors:[I

    .line 74
    sget p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_NOW:I

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderColor:I

    goto :goto_0

    .line 76
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BG_COLORS_FUTURE:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->bgColors:[I

    .line 77
    sget p1, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->BORDER_COLOR_FUTURE:I

    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->borderColor:I

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->invalidate()V

    :cond_2
    return-void
.end method
