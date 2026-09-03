.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;
.source "BaseSceneTwoDetailTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;-><init>()V

    .line 19
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->initPaint()V

    return-void
.end method

.method private drawIconMotionText(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIFFI)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getIconMotionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p3, p3

    sub-float/2addr v1, p3

    .line 66
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    const/4 p3, 0x3

    if-gt p7, p3, :cond_0

    int-to-float p3, p7

    mul-float/2addr p5, p3

    const/high16 p4, 0x40400000    # 3.0f

    div-float/2addr p5, p4

    sub-float/2addr v1, p5

    mul-float/2addr p6, p3

    div-float/2addr p6, p4

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p5

    :goto_0
    sub-float/2addr p2, p6

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getIconMotionText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p3, v1, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointText(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIFFI)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPointText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p3, p3

    add-float/2addr v1, p3

    .line 80
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    const/4 p3, 0x3

    if-gt p7, p3, :cond_0

    int-to-float p3, p7

    mul-float/2addr p5, p3

    const/high16 p4, 0x40400000    # 3.0f

    div-float/2addr p5, p4

    add-float/2addr v1, p5

    mul-float/2addr p6, p3

    div-float/2addr p6, p4

    goto :goto_0

    :cond_0
    add-float/2addr v1, p5

    :goto_0
    sub-float/2addr p2, p6

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPointText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p3, v1, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->achievement_detail_scene_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_one_detail_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private isContainPoint()Z
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPointText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updatePaint(I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    if-gt p1, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    int-to-float v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    int-to-float p1, v1

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->getMaxFrameIndex()I

    move-result p0

    return p0
.end method

.method public abstract getIconMotionText()Ljava/lang/String;
.end method

.method public getLayerPosition()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public abstract getPointText()Ljava/lang/String;
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isActived()Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->getIconMotionText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 14

    move-object v8, p0

    move/from16 v9, p4

    .line 44
    invoke-direct {p0, v9}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->updatePaint(I)V

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_detail_text_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_detail_text_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_detail_text_transition_x_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v12, v0

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_detail_text_transition_y_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v13, v0

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->isContainPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v7, p4

    .line 52
    invoke-direct/range {v0 .. v7}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->drawPointText(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIFFI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v5, v1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v4, v11

    move v6, v13

    move/from16 v7, p4

    .line 58
    invoke-direct/range {v0 .. v7}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneTwoDetailTrack;->drawIconMotionText(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIFFI)V

    return-object p2
.end method
