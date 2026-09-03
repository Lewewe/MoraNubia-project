.class public final enum Lcom/zte/aimodel/sharedmemory/ChainType;
.super Ljava/lang/Enum;
.source "ChainType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/sharedmemory/ChainType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/sharedmemory/ChainType;

.field public static final enum ASR:Lcom/zte/aimodel/sharedmemory/ChainType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/aimodel/sharedmemory/ChainType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DUAL:Lcom/zte/aimodel/sharedmemory/ChainType;

.field public static final enum NMT:Lcom/zte/aimodel/sharedmemory/ChainType;

.field public static final enum TTS:Lcom/zte/aimodel/sharedmemory/ChainType;


# instance fields
.field private final code:Ljava/lang/String;

.field private final description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 4

    .line 6
    sget-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->ASR:Lcom/zte/aimodel/sharedmemory/ChainType;

    sget-object v1, Lcom/zte/aimodel/sharedmemory/ChainType;->TTS:Lcom/zte/aimodel/sharedmemory/ChainType;

    sget-object v2, Lcom/zte/aimodel/sharedmemory/ChainType;->NMT:Lcom/zte/aimodel/sharedmemory/ChainType;

    sget-object v3, Lcom/zte/aimodel/sharedmemory/ChainType;->DUAL:Lcom/zte/aimodel/sharedmemory/ChainType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/zte/aimodel/sharedmemory/ChainType;

    const/4 v1, 0x0

    const-string v2, "\u81ea\u52a8\u8bed\u97f3\u8bc6\u522b"

    const-string v3, "ASR"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/zte/aimodel/sharedmemory/ChainType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->ASR:Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 10
    new-instance v0, Lcom/zte/aimodel/sharedmemory/ChainType;

    const/4 v1, 0x1

    const-string v2, "\u6587\u672c\u8f6c\u8bed\u97f3"

    const-string v3, "TTS"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/zte/aimodel/sharedmemory/ChainType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->TTS:Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 12
    new-instance v0, Lcom/zte/aimodel/sharedmemory/ChainType;

    const/4 v1, 0x2

    const-string v2, "\u795e\u7ecf\u673a\u5668\u7ffb\u8bd1"

    const-string v3, "NMT"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/zte/aimodel/sharedmemory/ChainType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->NMT:Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 14
    new-instance v0, Lcom/zte/aimodel/sharedmemory/ChainType;

    const/4 v1, 0x3

    const-string v2, "\u53cc\u5411\u5904\u7406\u94fe"

    const-string v3, "DUAL"

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/zte/aimodel/sharedmemory/ChainType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->DUAL:Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 6
    invoke-static {}, Lcom/zte/aimodel/sharedmemory/ChainType;->$values()[Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->$VALUES:[Lcom/zte/aimodel/sharedmemory/ChainType;

    .line 54
    new-instance v0, Lcom/zte/aimodel/sharedmemory/ChainType$1;

    invoke-direct {v0}, Lcom/zte/aimodel/sharedmemory/ChainType$1;-><init>()V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->code:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->description:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(Ljava/lang/String;)Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/zte/aimodel/sharedmemory/ChainType;->values()[Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 36
    iget-object v5, v4, Lcom/zte/aimodel/sharedmemory/ChainType;->code:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/sharedmemory/ChainType;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 1

    .line 6
    sget-object v0, Lcom/zte/aimodel/sharedmemory/ChainType;->$VALUES:[Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-virtual {v0}, [Lcom/zte/aimodel/sharedmemory/ChainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/sharedmemory/ChainType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->description:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/ChainType;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/ChainType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
