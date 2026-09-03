.class public Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;
.super Landroid/widget/FrameLayout;
.source "LeftLayout.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/util/Statement$Call;


# static fields
.field private static final BG_COLORS_EXPIRED:[I

.field private static final BG_COLORS_FUTURE:[I

.field private static final BG_COLORS_NOW:[I


# instance fields
.field private bgColors:[I

.field private bgPaint:Landroid/graphics/Paint;

.field private fullRoundPath:Landroid/graphics/Path;

.field private isNeedBackgroundColor:Z

.field private radius:F

.field private statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-string v0, "#FFB0B0B0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFDEDEDE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_EXPIRED:[I

    .line 29
    const-string v0, "#FFFC7676"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFFFB897"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_NOW:[I

    .line 30
    const-string v0, "#FF7976FC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFC397FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_FUTURE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->isNeedBackgroundColor:Z

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->radius:F

    .line 51
    sget-object p2, Lcn/nubia/redmagickyi/livecalender/util/Statement;->FUTURE:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->isNeedBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v6, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->fullRoundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->fullRoundPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->fullRoundPath:Landroid/graphics/Path;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 83
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget v6, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->radius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-eq p1, v0, :cond_2

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    .line 64
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p1, v0, :cond_0

    .line 65
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_EXPIRED:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgColors:[I

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->NOW:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p1, v0, :cond_1

    .line 67
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_NOW:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgColors:[I

    goto :goto_0

    .line 69
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->BG_COLORS_FUTURE:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->bgColors:[I

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setNeedBackgroundColor(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->isNeedBackgroundColor:Z

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->invalidate()V

    return-void
.end method
