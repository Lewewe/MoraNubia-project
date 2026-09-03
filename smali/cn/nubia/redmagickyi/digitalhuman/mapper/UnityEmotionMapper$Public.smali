.class public final enum Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;
.super Ljava/lang/Enum;
.source "UnityEmotionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Public"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_AMUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_CALM:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_CONFUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_EXPECTANT:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_EXTREME_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_FEAR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_FLUSTERED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_HAPPY:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_LOVE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_MILD_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

.field public static final enum EMOTION_CODE_SAD:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;


# instance fields
.field private emoCode:I

.field private motionId:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;
    .locals 12

    .line 35
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_FEAR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_MILD_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_EXTREME_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v4, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_AMUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v5, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_HAPPY:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v6, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_EXPECTANT:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v7, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_LOVE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v8, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_CONFUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v9, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_SAD:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v10, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_FLUSTERED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    sget-object v11, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_CALM:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    filled-new-array/range {v0 .. v11}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3e8

    const/4 v2, -0x1

    const-string v3, "EMOTION_CODE_NONE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 39
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3e9

    const/16 v2, 0x1398

    const-string v3, "EMOTION_CODE_FEAR"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_FEAR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3ea

    const/16 v2, 0x138f

    const-string v3, "EMOTION_CODE_MILD_ANGER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_MILD_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 43
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3eb

    const/16 v2, 0x139a

    const-string v3, "EMOTION_CODE_EXTREME_ANGER"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_EXTREME_ANGER:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3ec

    const/16 v2, 0x138e

    const-string v3, "EMOTION_CODE_AMUSED"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_AMUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 47
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const-string v1, "EMOTION_CODE_HAPPY"

    const/4 v2, 0x5

    const/16 v3, 0x3ed

    const/16 v4, 0x13ee

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_HAPPY:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 49
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/4 v1, 0x6

    const/16 v2, 0x3ee

    const-string v3, "EMOTION_CODE_EXPECTANT"

    invoke-direct {v0, v3, v1, v2, v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_EXPECTANT:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 51
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3ef

    const/16 v2, 0x13f6

    const-string v3, "EMOTION_CODE_LOVE"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_LOVE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3f0

    const/16 v2, 0x1395

    const-string v3, "EMOTION_CODE_CONFUSED"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_CONFUSED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 55
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3f1

    const/16 v2, 0x139e

    const-string v3, "EMOTION_CODE_SAD"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_SAD:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 57
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3f2

    const/16 v2, 0x139f

    const-string v3, "EMOTION_CODE_FLUSTERED"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_FLUSTERED:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    const/16 v1, 0x3f3

    const/16 v2, 0x1397

    const-string v3, "EMOTION_CODE_CALM"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_CALM:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->$values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->emoCode:I

    .line 68
    iput p4, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->motionId:I

    return-void
.end method

.method public static getMotionId(I)I
    .locals 6

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 81
    iget v5, v4, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->emoCode:I

    if-ne v5, p0, :cond_0

    .line 82
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getMotionId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;
    .locals 1

    .line 35
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    return-object v0
.end method


# virtual methods
.method public getEmoCode()I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->emoCode:I

    return p0
.end method

.method public getMotionId()I
    .locals 0

    .line 76
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->motionId:I

    return p0
.end method
