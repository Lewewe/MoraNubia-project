.class public final enum Lcom/zte/aigc/vo/charge/PeriodEnum;
.super Ljava/lang/Enum;
.source "PeriodEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/vo/charge/PeriodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/vo/charge/PeriodEnum;

.field public static final enum FOREVER:Lcom/zte/aigc/vo/charge/PeriodEnum;

.field public static final enum HALF_YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

.field public static final enum MONTH:Lcom/zte/aigc/vo/charge/PeriodEnum;

.field public static final enum QUARTER:Lcom/zte/aigc/vo/charge/PeriodEnum;

.field public static final enum YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/vo/charge/PeriodEnum;
    .locals 5

    .line 3
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->MONTH:Lcom/zte/aigc/vo/charge/PeriodEnum;

    sget-object v1, Lcom/zte/aigc/vo/charge/PeriodEnum;->QUARTER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    sget-object v2, Lcom/zte/aigc/vo/charge/PeriodEnum;->HALF_YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    sget-object v3, Lcom/zte/aigc/vo/charge/PeriodEnum;->YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    sget-object v4, Lcom/zte/aigc/vo/charge/PeriodEnum;->FOREVER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zte/aigc/vo/charge/PeriodEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    const-string v1, "MONTH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/vo/charge/PeriodEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->MONTH:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 5
    new-instance v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    const-string v1, "QUARTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/vo/charge/PeriodEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->QUARTER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 6
    new-instance v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    const/4 v1, 0x2

    const/4 v3, 0x6

    const-string v4, "HALF_YEAR"

    invoke-direct {v0, v4, v1, v3, v4}, Lcom/zte/aigc/vo/charge/PeriodEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->HALF_YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 7
    new-instance v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    const-string v1, "YEAR"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/vo/charge/PeriodEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 8
    new-instance v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "FOREVER"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/zte/aigc/vo/charge/PeriodEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->FOREVER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 3
    invoke-static {}, Lcom/zte/aigc/vo/charge/PeriodEnum;->$values()[Lcom/zte/aigc/vo/charge/PeriodEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/PeriodEnum;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/zte/aigc/vo/charge/PeriodEnum;->value:I

    .line 15
    iput-object p4, p0, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/PeriodEnum;
    .locals 3

    .line 27
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->QUARTER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->HALF_YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 31
    :cond_1
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 33
    :cond_2
    sget-object v1, Lcom/zte/aigc/vo/charge/PeriodEnum;->FOREVER:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iget-object v2, v1, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/PeriodEnum;
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
    const-class v0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/charge/PeriodEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/vo/charge/PeriodEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/PeriodEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/vo/charge/PeriodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/vo/charge/PeriodEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/PeriodEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/zte/aigc/vo/charge/PeriodEnum;->value:I

    return p0
.end method
