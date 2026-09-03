.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "UserLayout.java"


# static fields
.field private static final bgColors:[I

.field private static final borderColors:[I

.field private static final shadowColors:[I


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private borderWidth:F

.field private fullRoundPath:Landroid/graphics/Path;

.field private isFullRound:Z

.field private radius:F

.field private shadowPaint:Landroid/graphics/Paint;

.field private shadowWidth:F

.field private simplePath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-string v0, "#7976FC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#BFC397FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->bgColors:[I

    .line 35
    const-string v1, "#33FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->makeCubicGradientScrimAlpha(II)[I

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowColors:[I

    .line 36
    const-string v1, "#C397FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 57
    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_radius:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    .line 59
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_borderWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    mul-float/2addr p2, v0

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderWidth:F

    .line 60
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PopLayout_pop_shadowWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderWidth:F

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    .line 68
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderPaint:Landroid/graphics/Paint;

    .line 69
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->bgPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 107
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->isFullRound:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->fullRoundPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    :goto_0
    move-object v8, v1

    .line 109
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 110
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 116
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->bgPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v14, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->bgColors:[I

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v2

    move v10, v6

    move v11, v5

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v12, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    sget-object v27, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowColors:[I

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v9, v2

    move-object/from16 v14, v27

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    iget v4, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v11, v5

    move v5, v9

    move v12, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    const/16 v25, 0x0

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move/from16 v23, v3

    move-object/from16 v24, v27

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    sub-float v22, v4, v5

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    sub-float v23, v4, v5

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move/from16 v21, v3

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    sub-float v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v4, v3

    const-wide v9, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v9

    double-to-int v4, v4

    int-to-float v4, v4

    float-to-double v5, v3

    mul-double/2addr v5, v9

    double-to-int v3, v5

    int-to-float v3, v3

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    move-object/from16 v19, v2

    move/from16 v22, v4

    move/from16 v23, v3

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    iget v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v2, v1

    mul-double/2addr v2, v9

    double-to-int v2, v2

    int-to-float v4, v2

    float-to-double v1, v1

    mul-double/2addr v1, v9

    double-to-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v4

    iget v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v13, v5

    mul-double/2addr v13, v9

    double-to-int v6, v13

    sub-int/2addr v4, v6

    int-to-float v4, v4

    float-to-double v5, v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    int-to-float v5, v5

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v5

    iget v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v13, v6

    mul-double/2addr v13, v9

    double-to-int v6, v13

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v6

    iget v13, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v13, v13

    mul-double/2addr v13, v9

    double-to-int v13, v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v2, v2

    mul-double/2addr v2, v9

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    iget v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v3, v3

    mul-double/2addr v3, v9

    double-to-int v3, v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v4, v4

    mul-double/2addr v4, v9

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v5

    iget v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v13, v6

    mul-double/2addr v13, v9

    double-to-int v6, v13

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    iget v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowWidth:F

    float-to-double v3, v2

    mul-double/2addr v3, v9

    double-to-int v3, v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    float-to-double v1, v2

    mul-double/2addr v1, v9

    double-to-int v1, v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->shadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v14, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderColors:[I

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v2

    move v10, v12

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    .line 83
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 88
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float v0, p3, p4

    mul-float/2addr p3, p4

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p3, 0x43340000    # 180.0f

    const/4 v0, 0x1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2, p3, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    mul-float/2addr v0, p4

    sub-float/2addr p3, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    mul-float/2addr v3, p4

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p2, p3, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v1, v2, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    mul-float v4, v3, p4

    sub-float/2addr v0, v4

    mul-float/2addr v3, p4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p2, v1, v0, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p2, v2, v2, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->simplePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->fullRoundPath:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->fullRoundPath:Landroid/graphics/Path;

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 102
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->fullRoundPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getHeight()I

    move-result p1

    int-to-float v4, p1

    iget v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->radius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setFullRound(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->isFullRound:Z

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->invalidate()V

    return-void
.end method
