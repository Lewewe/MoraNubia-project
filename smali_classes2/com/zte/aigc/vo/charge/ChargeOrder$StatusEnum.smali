.class public final enum Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
.super Ljava/lang/Enum;
.source "ChargeOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/vo/charge/ChargeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum CLOSED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum FAILED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum FINISHED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum REFUNDED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum SUCCESS:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field public static final enum WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    .locals 6

    .line 155
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    sget-object v1, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->SUCCESS:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    sget-object v2, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FAILED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    sget-object v3, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->CLOSED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    sget-object v4, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FINISHED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    sget-object v5, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->REFUNDED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    filled-new-array/range {v0 .. v5}, [Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "WAIT_FOR_PAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 157
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->SUCCESS:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 158
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FAILED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 159
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->CLOSED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 160
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "FINISHED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FINISHED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 161
    new-instance v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    const-string v1, "REFUNDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->REFUNDED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 155
    invoke-static {}, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->$values()[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

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

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput p3, p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->value:I

    .line 168
    iput-object p4, p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    .locals 2

    .line 180
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->SUCCESS:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 182
    :cond_0
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FAILED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 184
    :cond_1
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->CLOSED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 186
    :cond_2
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->FINISHED:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 189
    :cond_3
    sget-object p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 155
    const-class v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    .locals 1

    .line 155
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->value:I

    return p0
.end method
