.class public Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;
.source "SceneTwoClickExitTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;-><init>()V

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->achievement_detail_scene_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_clickexit_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private updatePaint(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/high16 v2, 0x42ff0000    # 127.5f

    if-gt p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    int-to-float v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

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

    const/16 p0, 0x67

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->getMaxFrameIndex()I

    move-result p0

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->achievement_detail_scene_two_click_exit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4

    .line 48
    invoke-direct {p0, p4}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->updatePaint(I)V

    .line 49
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v0, p4

    .line 53
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_two_clickexit_text_baseline:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/SceneTwoClickExitTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p4, v0, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p2
.end method
