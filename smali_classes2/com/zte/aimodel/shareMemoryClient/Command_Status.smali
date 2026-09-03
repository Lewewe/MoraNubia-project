.class public final enum Lcom/zte/aimodel/shareMemoryClient/Command_Status;
.super Ljava/lang/Enum;
.source "Command_Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/shareMemoryClient/Command_Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/shareMemoryClient/Command_Status;

.field public static final enum BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

.field public static final enum INVALID_OPERATION:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

.field public static final enum NOT_ENOUGH_DATA:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

.field public static final enum OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 4

    .line 3
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    sget-object v1, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->INVALID_OPERATION:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    sget-object v2, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->NOT_ENOUGH_DATA:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    sget-object v3, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    const-string v1, "BAD_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/aimodel/shareMemoryClient/Command_Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    .line 5
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    const-string v1, "INVALID_OPERATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/aimodel/shareMemoryClient/Command_Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->INVALID_OPERATION:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    .line 6
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    const-string v1, "NOT_ENOUGH_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zte/aimodel/shareMemoryClient/Command_Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->NOT_ENOUGH_DATA:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    .line 7
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    const-string v1, "OK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zte/aimodel/shareMemoryClient/Command_Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    .line 3
    invoke-static {}, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->$values()[Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->$VALUES:[Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/shareMemoryClient/Command_Status;
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
    const-class v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->$VALUES:[Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    invoke-virtual {v0}, [Lcom/zte/aimodel/shareMemoryClient/Command_Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object v0
.end method
