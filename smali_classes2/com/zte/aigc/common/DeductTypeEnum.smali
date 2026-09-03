.class public final enum Lcom/zte/aigc/common/DeductTypeEnum;
.super Ljava/lang/Enum;
.source "DeductTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/common/DeductTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/common/DeductTypeEnum;

.field public static final enum AFTER:Lcom/zte/aigc/common/DeductTypeEnum;

.field public static final enum BEFORE:Lcom/zte/aigc/common/DeductTypeEnum;

.field public static final enum UNKNOWN:Lcom/zte/aigc/common/DeductTypeEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/common/DeductTypeEnum;
    .locals 3

    .line 3
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/DeductTypeEnum;

    sget-object v1, Lcom/zte/aigc/common/DeductTypeEnum;->BEFORE:Lcom/zte/aigc/common/DeductTypeEnum;

    sget-object v2, Lcom/zte/aigc/common/DeductTypeEnum;->AFTER:Lcom/zte/aigc/common/DeductTypeEnum;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aigc/common/DeductTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/zte/aigc/common/DeductTypeEnum;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/zte/aigc/common/DeductTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/DeductTypeEnum;

    .line 5
    new-instance v0, Lcom/zte/aigc/common/DeductTypeEnum;

    const-string v1, "BEFORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/common/DeductTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->BEFORE:Lcom/zte/aigc/common/DeductTypeEnum;

    .line 6
    new-instance v0, Lcom/zte/aigc/common/DeductTypeEnum;

    const-string v1, "AFTER"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/common/DeductTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->AFTER:Lcom/zte/aigc/common/DeductTypeEnum;

    .line 3
    invoke-static {}, Lcom/zte/aigc/common/DeductTypeEnum;->$values()[Lcom/zte/aigc/common/DeductTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->$VALUES:[Lcom/zte/aigc/common/DeductTypeEnum;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/zte/aigc/common/DeductTypeEnum;->value:I

    .line 13
    iput-object p4, p0, Lcom/zte/aigc/common/DeductTypeEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/common/DeductTypeEnum;
    .locals 2

    .line 25
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->BEFORE:Lcom/zte/aigc/common/DeductTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/DeductTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->AFTER:Lcom/zte/aigc/common/DeductTypeEnum;

    iget-object v1, v0, Lcom/zte/aigc/common/DeductTypeEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 30
    :cond_1
    sget-object p0, Lcom/zte/aigc/common/DeductTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/DeductTypeEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/common/DeductTypeEnum;
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
    const-class v0, Lcom/zte/aigc/common/DeductTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/common/DeductTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/common/DeductTypeEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->$VALUES:[Lcom/zte/aigc/common/DeductTypeEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/common/DeductTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/common/DeductTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/aigc/common/DeductTypeEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/aigc/common/DeductTypeEnum;->value:I

    return p0
.end method
