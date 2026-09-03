.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;
.source "BaseTextTrack.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    .line 26
    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->transferIndex(I)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBeginIndex()I
.end method

.method public abstract getEndIndex()I
.end method

.method public abstract getLayerPosition()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public isActived()Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final transferIndex(I)I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->getBeginIndex()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->getEndIndex()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTextTrack;->getBeginIndex()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
