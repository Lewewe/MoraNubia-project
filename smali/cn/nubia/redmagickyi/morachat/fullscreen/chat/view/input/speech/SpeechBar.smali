.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SpeechBar.java"


# static fields
.field private static final PROGRESS_NUM:I = 0xc

.field private static final bgInvalidColors:[I

.field private static final bgValidColors:[I


# instance fields
.field private bgPath:Landroid/graphics/Path;

.field private borderPaint:Landroid/graphics/Paint;

.field private isValid:Z

.field private progress:D

.field private progressSelectedPaint:Landroid/graphics/Paint;

.field private progressSpacing:F

.field private progressUnSelectedPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "#FFC397FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FF7976FC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgValidColors:[I

    .line 21
    const-string v0, "#FFFC7676"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#FFF76666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(III)[I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgInvalidColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 99
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 100
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v11, 0x0

    sub-float v6, v2, v11

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v2, v11

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v11

    move v5, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 101
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    const-string v4, "#FFF76666"

    if-eqz v3, :cond_0

    const-string v3, "#FF867AF7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v11

    .line 105
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 106
    iget-object v12, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v15, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v16, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    sget-object v19, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v13, v2

    move v14, v2

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 107
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    const-string v5, "#FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    .line 111
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 112
    iget-object v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v9, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v6, v2

    move v7, v2

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 113
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    iget-boolean v5, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    if-eqz v5, :cond_1

    const-string v4, "#FF9D9BFF"

    :cond_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float v6, v2, v3

    .line 117
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 118
    iget-object v4, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v2, v6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v8, v2, v6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p5_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p5_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v5, v6

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v2

    int-to-float v7, v2

    .line 120
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    iget-boolean v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgValidColors:[I

    goto :goto_1

    :cond_2
    sget-object v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgInvalidColors:[I

    :goto_1
    move-object v8, v3

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    iget-wide v2, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progress:D

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13_dp:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v14

    sub-float v16, v6, v7

    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_0
    const/16 v12, 0xc

    if-ge v13, v12, :cond_1

    .line 135
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 136
    iget v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSpacing:F

    add-float/2addr v6, v15

    int-to-float v7, v13

    mul-float/2addr v6, v7

    add-float v7, v5, v6

    add-float v9, v7, v15

    add-float v10, v14, v16

    .line 140
    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v6, v12

    move v8, v14

    move v11, v4

    move/from16 v19, v14

    move-object v14, v12

    move v12, v4

    move/from16 v20, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    rsub-int/lit8 v6, v20, 0xb

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 141
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSelectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressUnSelectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {v1, v14, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v13, v20, 0x1

    move/from16 v14, v19

    goto :goto_0

    :cond_1
    move/from16 v19, v14

    move/from16 v14, v17

    :goto_2
    if-ge v14, v12, :cond_3

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    iget v7, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSpacing:F

    add-float/2addr v7, v15

    int-to-float v8, v14

    mul-float/2addr v7, v8

    sub-float v9, v6, v7

    sub-float v7, v9, v15

    add-float v10, v19, v16

    .line 151
    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v6, v13

    move/from16 v8, v19

    move v11, v4

    move/from16 v18, v12

    move v12, v4

    move/from16 v20, v4

    move-object v4, v13

    move-object/from16 v13, v17

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    rsub-int/lit8 v6, v14, 0xb

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 152
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSelectedPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_2
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressUnSelectedPaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v18

    move/from16 v4, v20

    goto :goto_2

    :cond_3
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->setWillNotDraw(Z)V

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->bgPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->borderPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSelectedPaint:Landroid/graphics/Paint;

    .line 53
    const-string v2, "#FFF9F9FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressUnSelectedPaint:Landroid/graphics/Paint;

    .line 55
    const-string p0, "#33FFFFFF"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->drawProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x43a80000    # 336.0f

    div-float/2addr p1, p2

    .line 62
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progressSpacing:F

    return-void
.end method

.method public setProgress(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progress:D

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->invalidate()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public setValid(Z)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    if-eq v0, p1, :cond_0

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->progress:D

    .line 73
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid:Z

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->invalidate()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->postInvalidate()V

    :goto_0
    return-void
.end method
