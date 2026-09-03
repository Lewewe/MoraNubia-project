.class public final enum Lcom/zte/aivoice/code/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aivoice/code/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aivoice/code/ErrorCode;

.field public static final enum ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

.field public static final enum ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

.field public static final enum ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;


# instance fields
.field private code:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aivoice/code/ErrorCode;
    .locals 3

    .line 3
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    sget-object v2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aivoice/code/ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, -0x1

    const-string v2, "ERR_CANCELED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/zte/aivoice/code/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    .line 7
    new-instance v0, Lcom/zte/aivoice/code/ErrorCode;

    const-string v1, "ERR_REMOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aivoice/code/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    .line 9
    new-instance v0, Lcom/zte/aivoice/code/ErrorCode;

    const-string v1, "ERR_NO_NETWORK"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/aivoice/code/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    .line 3
    invoke-static {}, Lcom/zte/aivoice/code/ErrorCode;->$values()[Lcom/zte/aivoice/code/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/code/ErrorCode;->$VALUES:[Lcom/zte/aivoice/code/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/zte/aivoice/code/ErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aivoice/code/ErrorCode;
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
    const-class v0, Lcom/zte/aivoice/code/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aivoice/code/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/zte/aivoice/code/ErrorCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->$VALUES:[Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0}, [Lcom/zte/aivoice/code/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aivoice/code/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/zte/aivoice/code/ErrorCode;->code:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/zte/aivoice/code/ErrorCode;->code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorCode{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/zte/aivoice/code/ErrorCode;->code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
