.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "BotLayout.java"


# static fields
.field private static final bgColors:[I

.field private static final borderColors:[I

.field private static final shadowColors:[I


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private borderWidth:F

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private shadowPaint:Landroid/graphics/Paint;

.field private shadowWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-string v0, "#D9FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFE8E8FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->bgColors:[I

    .line 32
    const-string v0, "#21867AF7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/ScrimUtil;->makeCubicGradientScrimAlpha(II)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowColors:[I

    .line 33
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFB2B1F7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 54
    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_radius:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->radius:F

    .line 56
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_borderWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    mul-float/2addr p2, v0

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderWidth:F

    .line 57
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_shadowWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->radius:F

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderWidth:F

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    .line 65
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderPaint:Landroid/graphics/Paint;

    .line 66
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->bgPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 86
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 87
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 92
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->bgPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v13, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->bgColors:[I

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    move/from16 v9, v16

    move/from16 v10, v17

    move v11, v6

    move v12, v5

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v11, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    sget-object v26, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowColors:[I

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    move-object/from16 v13, v26

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 97
    iget v4, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v10, v5

    move v5, v8

    move v11, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    const/16 v24, 0x0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move/from16 v22, v3

    move-object/from16 v23, v26

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    sub-float v21, v4, v5

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    sub-float v22, v4, v5

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move/from16 v20, v3

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    sub-float v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowWidth:F

    float-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v8, v1

    .line 110
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v9, v8

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move/from16 v21, v9

    move/from16 v22, v9

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    .line 111
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v8

    int-to-float v4, v4

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v21, v4

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v8

    int-to-float v6, v6

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    int-to-float v4, v4

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v9

    move/from16 v22, v4

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v13, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderColors:[I

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    move v9, v11

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    .line 75
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 80
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/BotLayout;->radius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
