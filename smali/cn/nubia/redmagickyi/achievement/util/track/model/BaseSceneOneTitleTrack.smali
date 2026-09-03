.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;
.source "BaseSceneOneTitleTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;-><init>()V

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->achievement_detail_scene_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private updatePaint(I)V
    .locals 5

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_one_title_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_one_title_text_scale_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-gt p1, v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    mul-int/2addr v1, p1

    div-int/2addr v1, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    if-gt p1, v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    rsub-int/lit8 v4, p1, 0x8

    mul-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    const/16 v0, 0xff

    if-gt p1, v2, :cond_2

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    mul-int/2addr p1, v0

    div-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x33

    if-lt p1, v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sub-int/2addr p1, v1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x7

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4

    .line 42
    invoke-direct {p0, p4}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->updatePaint(I)V

    .line 43
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 45
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_one_title_text_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v1, p4

    .line 48
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_scene_one_title_text_baseline:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseSceneOneTitleTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p4, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p2
.end method
