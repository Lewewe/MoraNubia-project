.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;
.super Ljava/lang/Thread;
.source "BaseTrack.java"


# instance fields
.field private isActived:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isActived:Z

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->initPaintConfig()V

    return-void
.end method

.method private initPaintConfig()V
    .locals 2

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
.end method

.method public abstract getBeginIndex()I
.end method

.method public abstract getEndIndex()I
.end method

.method public abstract getLayerPosition()I
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public isActived()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isActived:Z

    return p0
.end method

.method public abstract isCommonRes()Z
.end method

.method public final isInRange(I)Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isActived()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getBeginIndex()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->getEndIndex()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract release()V
.end method

.method public setActived(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;->isActived:Z

    return-void
.end method

.method public abstract transferIndex(I)I
.end method
