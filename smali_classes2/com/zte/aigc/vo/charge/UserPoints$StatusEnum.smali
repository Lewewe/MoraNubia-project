.class public final enum Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
.super Ljava/lang/Enum;
.source "UserPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/vo/charge/UserPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

.field public static final enum INVALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

.field public static final enum VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
    .locals 2

    .line 136
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->INVALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    sget-object v1, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    filled-new-array {v0, v1}, [Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 137
    new-instance v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->INVALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    .line 138
    new-instance v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    const-string v1, "VALID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    .line 136
    invoke-static {}, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->$values()[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

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

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->value:I

    .line 145
    iput-object p4, p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
    .locals 2

    .line 157
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->INVALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 160
    :cond_0
    sget-object p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 136
    const-class v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;
    .locals 1

    .line 136
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints$StatusEnum;->value:I

    return p0
.end method
