.class public final enum Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
.super Ljava/lang/Enum;
.source "UserPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/vo/charge/UserPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObtainFromEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

.field public static final enum CHARGE:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

.field public static final enum MONTHLY_GIVEN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

.field public static final enum UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    .locals 3

    .line 164
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    sget-object v1, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    sget-object v2, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->CHARGE:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 165
    new-instance v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    .line 166
    new-instance v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    const-string v1, "MONTHLY_GIVEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    .line 167
    new-instance v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    const-string v1, "CHARGE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->CHARGE:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    .line 164
    invoke-static {}, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->$values()[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

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

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->value:I

    .line 174
    iput-object p4, p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    .locals 2

    .line 186
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->MONTHLY_GIVEN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->CHARGE:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    iget-object v1, v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->desc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 191
    :cond_1
    sget-object p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->UNKNOWN:Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 164
    const-class v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;
    .locals 1

    .line 164
    sget-object v0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->$VALUES:[Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    invoke-virtual {v0}, [Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPoints$ObtainFromEnum;->value:I

    return p0
.end method
