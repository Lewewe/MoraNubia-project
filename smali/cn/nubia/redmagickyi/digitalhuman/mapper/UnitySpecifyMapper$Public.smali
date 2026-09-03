.class public final enum Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;
.super Ljava/lang/Enum;
.source "UnitySpecifyMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Public"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum ANSWER_ABNORMAL:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum ANSWER_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum HEARING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum SCREEN_UNLOCK:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

.field public static final enum THINKING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;


# instance fields
.field private motionId:I

.field private specifyCode:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;
    .locals 7

    .line 10
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->SCREEN_UNLOCK:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->HEARING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v4, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->THINKING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v5, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->ANSWER_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    sget-object v6, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->ANSWER_ABNORMAL:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    filled-new-array/range {v0 .. v6}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "SCREEN_UNLOCK"

    invoke-direct {v0, v3, v1, v2, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->SCREEN_UNLOCK:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 16
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/16 v1, 0x3e8

    const/16 v2, 0x7d4

    const-string v3, "HELLO"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 20
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/16 v1, 0x3e9

    const/16 v2, 0x7d5

    const-string v3, "GOODBYE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 22
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/4 v1, 0x3

    const/16 v2, 0x7d0

    const-string v3, "HEARING_IN_DIALOGUE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->HEARING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/4 v1, 0x4

    const/16 v2, 0x7d1

    const-string v3, "THINKING_IN_DIALOGUE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->THINKING_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/4 v1, 0x5

    const/16 v2, 0x7d2

    const-string v3, "ANSWER_IN_DIALOGUE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->ANSWER_IN_DIALOGUE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    const/4 v1, 0x6

    const/16 v2, 0x7d3

    const-string v3, "ANSWER_ABNORMAL"

    invoke-direct {v0, v3, v1, v2, v2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->ANSWER_ABNORMAL:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    .line 10
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->$values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->specifyCode:I

    .line 37
    iput p4, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->motionId:I

    return-void
.end method

.method public static getMotionId(I)Ljava/lang/Integer;
    .locals 5

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    iget v4, v3, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->specifyCode:I

    if-ne v4, p0, :cond_0

    .line 51
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->getMotionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;
    .locals 1

    .line 10
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    return-object v0
.end method


# virtual methods
.method public getMotionId()I
    .locals 0

    .line 45
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->motionId:I

    return p0
.end method

.method public getSpecifyCode()I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->specifyCode:I

    return p0
.end method
