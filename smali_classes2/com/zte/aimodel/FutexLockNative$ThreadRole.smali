.class public final enum Lcom/zte/aimodel/FutexLockNative$ThreadRole;
.super Ljava/lang/Enum;
.source "FutexLockNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/FutexLockNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/FutexLockNative$ThreadRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/FutexLockNative$ThreadRole;

.field public static final enum ROLE_CONSUMER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

.field public static final enum ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

.field public static final enum ROLE_PRODUCER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

.field public static final enum ROLE_PRODUCER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

.field public static final enum ROLE_UNKNOWN:Lcom/zte/aimodel/FutexLockNative$ThreadRole;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/FutexLockNative$ThreadRole;
    .locals 5

    .line 10
    sget-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_UNKNOWN:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    sget-object v1, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    sget-object v2, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    sget-object v3, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_PRODUCER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    sget-object v4, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_PRODUCER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    const-string v1, "ROLE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_UNKNOWN:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    .line 12
    new-instance v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    const-string v1, "ROLE_CONSUMER_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    .line 13
    new-instance v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    const-string v1, "ROLE_CONSUMER_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    .line 14
    new-instance v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    const-string v1, "ROLE_PRODUCER_1"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_PRODUCER_1:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    .line 15
    new-instance v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    const-string v1, "ROLE_PRODUCER_2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_PRODUCER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    .line 10
    invoke-static {}, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->$values()[Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->$VALUES:[Lcom/zte/aimodel/FutexLockNative$ThreadRole;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/FutexLockNative$ThreadRole;
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
    const-class v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/FutexLockNative$ThreadRole;
    .locals 1

    .line 10
    sget-object v0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->$VALUES:[Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-virtual {v0}, [Lcom/zte/aimodel/FutexLockNative$ThreadRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->value:I

    return p0
.end method
