.class public final enum Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;
.super Ljava/lang/Enum;
.source "UnityEmotionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Private"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

.field public static final enum EMOTION_CODE_INNER_ERROR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

.field public static final enum EMOTION_CODE_INNER_GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

.field public static final enum EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;


# instance fields
.field private emoCode:I

.field private motionId:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;
    .locals 3

    .line 90
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_ERROR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    const/16 v1, 0xbb8

    const/16 v2, 0x1397

    const-string v3, "EMOTION_CODE_INNER_HELLO"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    const/16 v1, 0xbb9

    const/16 v2, 0x1389

    const-string v3, "EMOTION_CODE_INNER_GOODBYE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    const/16 v1, 0xbba

    const/16 v2, 0x139e

    const-string v3, "EMOTION_CODE_INNER_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_ERROR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->$values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->emoCode:I

    .line 103
    iput p4, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->motionId:I

    return-void
.end method

.method public static getMotionId(I)I
    .locals 6

    .line 115
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 116
    iget v5, v4, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->emoCode:I

    if-ne v5, p0, :cond_0

    .line 117
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getMotionId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 90
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;
    .locals 1

    .line 90
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    return-object v0
.end method


# virtual methods
.method public getEmoCode()I
    .locals 0

    .line 107
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->emoCode:I

    return p0
.end method

.method public getMotionId()I
    .locals 0

    .line 111
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->motionId:I

    return p0
.end method
