.class public final enum Lcom/zte/aivoice/asr/ASRSource;
.super Ljava/lang/Enum;
.source "ASRSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aivoice/asr/ASRSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aivoice/asr/ASRSource;

.field public static final enum Google:Lcom/zte/aivoice/asr/ASRSource;

.field public static final enum Microsoft:Lcom/zte/aivoice/asr/ASRSource;


# direct methods
.method private static synthetic $values()[Lcom/zte/aivoice/asr/ASRSource;
    .locals 2

    .line 3
    sget-object v0, Lcom/zte/aivoice/asr/ASRSource;->Microsoft:Lcom/zte/aivoice/asr/ASRSource;

    sget-object v1, Lcom/zte/aivoice/asr/ASRSource;->Google:Lcom/zte/aivoice/asr/ASRSource;

    filled-new-array {v0, v1}, [Lcom/zte/aivoice/asr/ASRSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/zte/aivoice/asr/ASRSource;

    const-string v1, "Microsoft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/asr/ASRSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aivoice/asr/ASRSource;->Microsoft:Lcom/zte/aivoice/asr/ASRSource;

    .line 7
    new-instance v0, Lcom/zte/aivoice/asr/ASRSource;

    const-string v1, "Google"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/asr/ASRSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aivoice/asr/ASRSource;->Google:Lcom/zte/aivoice/asr/ASRSource;

    .line 3
    invoke-static {}, Lcom/zte/aivoice/asr/ASRSource;->$values()[Lcom/zte/aivoice/asr/ASRSource;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/asr/ASRSource;->$VALUES:[Lcom/zte/aivoice/asr/ASRSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aivoice/asr/ASRSource;
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
    const-class v0, Lcom/zte/aivoice/asr/ASRSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aivoice/asr/ASRSource;

    return-object p0
.end method

.method public static values()[Lcom/zte/aivoice/asr/ASRSource;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/aivoice/asr/ASRSource;->$VALUES:[Lcom/zte/aivoice/asr/ASRSource;

    invoke-virtual {v0}, [Lcom/zte/aivoice/asr/ASRSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aivoice/asr/ASRSource;

    return-object v0
.end method
