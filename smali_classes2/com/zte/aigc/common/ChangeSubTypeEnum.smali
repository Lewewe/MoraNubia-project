.class public final enum Lcom/zte/aigc/common/ChangeSubTypeEnum;
.super Ljava/lang/Enum;
.source "ChangeSubTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/common/ChangeSubTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum AI_RT_TRANSLATE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum CANCEL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum CHARGE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum DEDUCT:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum FREE_TRIAL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum MONTHLY_GIVEN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum NEW_USER:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum REFUND:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field public static final enum UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/common/ChangeSubTypeEnum;
    .locals 9

    .line 3
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v1, Lcom/zte/aigc/common/ChangeSubTypeEnum;->NEW_USER:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v2, Lcom/zte/aigc/common/ChangeSubTypeEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v3, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CHARGE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v4, Lcom/zte/aigc/common/ChangeSubTypeEnum;->DEDUCT:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v5, Lcom/zte/aigc/common/ChangeSubTypeEnum;->FREE_TRIAL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v6, Lcom/zte/aigc/common/ChangeSubTypeEnum;->REFUND:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v7, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CANCEL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    sget-object v8, Lcom/zte/aigc/common/ChangeSubTypeEnum;->AI_RT_TRANSLATE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    filled-new-array/range {v0 .. v8}, [Lcom/zte/aigc/common/ChangeSubTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 5
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "NEW_USER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->NEW_USER:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 6
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "MONTHLY_GIVEN"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 7
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "CHARGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CHARGE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 8
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "DEDUCT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->DEDUCT:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 9
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "FREE_TRIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->FREE_TRIAL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 10
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "REFUND"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->REFUND:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 11
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "CANCEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CANCEL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 12
    new-instance v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    const-string v1, "AI_RT_TRANSLATE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/common/ChangeSubTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->AI_RT_TRANSLATE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 3
    invoke-static {}, Lcom/zte/aigc/common/ChangeSubTypeEnum;->$values()[Lcom/zte/aigc/common/ChangeSubTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->$VALUES:[Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
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
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->value:I

    .line 19
    iput-object p4, p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/common/ChangeSubTypeEnum;
    .locals 2

    .line 31
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->NEW_USER:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 35
    :cond_1
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CHARGE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 37
    :cond_2
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->DEDUCT:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 39
    :cond_3
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->FREE_TRIAL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 41
    :cond_4
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->REFUND:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 43
    :cond_5
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->CANCEL:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    .line 45
    :cond_6
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->AI_RT_TRANSLATE:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    .line 48
    :cond_7
    sget-object p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/common/ChangeSubTypeEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/common/ChangeSubTypeEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->$VALUES:[Lcom/zte/aigc/common/ChangeSubTypeEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/common/ChangeSubTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->value:I

    return p0
.end method
