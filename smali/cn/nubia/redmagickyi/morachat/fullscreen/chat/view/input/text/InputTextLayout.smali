.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "InputTextLayout.java"


# static fields
.field private static final bgColors:[I


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFE8E8FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->bgColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->setWillNotDraw(Z)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 45
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 49
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 50
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v10, 0x0

    sub-float v5, v1, v10

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v10

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v10

    move v4, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 51
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    const-string v2, "#FF867AF7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v10

    .line 55
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v5, v3, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float v6, v3, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 57
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 61
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float v7, v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v1

    move v5, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 63
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    const-string v3, "#FF9D9BFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float v5, v1, v2

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 68
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    sub-float v7, v1, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p5_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p5_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v5

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    sget-object v6, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->bgColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/text/InputTextLayout;->borderPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
