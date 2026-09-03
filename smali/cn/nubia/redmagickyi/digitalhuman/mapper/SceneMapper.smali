.class public Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;
.super Ljava/lang/Object;
.source "SceneMapper.java"


# static fields
.field private static recentType:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->recentType:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvatarHeight(I)I
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    const/16 p0, 0x78

    return p0
.end method

.method public static getAvatarLayoutParams(IFF)[F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result v0

    .line 75
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result p0

    int-to-float v0, v0

    div-float v1, p1, v0

    int-to-float p0, p0

    div-float v2, p2, p0

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v0, v1

    mul-float v3, p0, v1

    cmpl-float v4, v0, p1

    if-gtz v4, :cond_1

    cmpl-float v4, p0, p2

    if-lez v4, :cond_2

    :cond_1
    div-float/2addr v2, v0

    div-float/2addr v3, p0

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move p2, p0

    move p1, v0

    :cond_2
    const/4 p0, 0x3

    .line 85
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput v1, p0, p1

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAvatarWidth(I)I
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    const/16 p0, 0x78

    return p0
.end method

.method public static getRecentType()Ljava/lang/Integer;
    .locals 1

    .line 34
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->recentType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static searchTypeByScene(IZ)I
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->recentType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return p0
.end method
