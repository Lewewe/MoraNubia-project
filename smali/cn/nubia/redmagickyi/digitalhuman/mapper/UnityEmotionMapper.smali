.class public Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper;
.super Ljava/lang/Object;
.source "UnityEmotionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;,
        Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotionId(I)I
    .locals 1

    .line 27
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getMotionId(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getMotionId(I)I

    move-result v0

    :cond_0
    return v0
.end method
