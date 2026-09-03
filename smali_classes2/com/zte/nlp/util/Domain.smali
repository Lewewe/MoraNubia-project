.class public final enum Lcom/zte/nlp/util/Domain;
.super Ljava/lang/Enum;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/nlp/util/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/nlp/util/Domain;

.field public static final enum CommonConfirm:Lcom/zte/nlp/util/Domain;

.field public static final enum RedMagicSetting:Lcom/zte/nlp/util/Domain;

.field public static final enum RedMagicTool:Lcom/zte/nlp/util/Domain;


# instance fields
.field private domainKey:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/zte/nlp/util/Domain;
    .locals 3

    .line 3
    sget-object v0, Lcom/zte/nlp/util/Domain;->RedMagicSetting:Lcom/zte/nlp/util/Domain;

    sget-object v1, Lcom/zte/nlp/util/Domain;->RedMagicTool:Lcom/zte/nlp/util/Domain;

    sget-object v2, Lcom/zte/nlp/util/Domain;->CommonConfirm:Lcom/zte/nlp/util/Domain;

    filled-new-array {v0, v1, v2}, [Lcom/zte/nlp/util/Domain;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/zte/nlp/util/Domain;

    const-string v1, "RedMagicSetting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/zte/nlp/util/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/nlp/util/Domain;->RedMagicSetting:Lcom/zte/nlp/util/Domain;

    .line 7
    new-instance v0, Lcom/zte/nlp/util/Domain;

    const-string v1, "RedMagicTool"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/zte/nlp/util/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/nlp/util/Domain;->RedMagicTool:Lcom/zte/nlp/util/Domain;

    .line 9
    new-instance v0, Lcom/zte/nlp/util/Domain;

    const/4 v1, 0x2

    const-string v2, "llm_common_confirm"

    const-string v3, "CommonConfirm"

    invoke-direct {v0, v3, v1, v2}, Lcom/zte/nlp/util/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/nlp/util/Domain;->CommonConfirm:Lcom/zte/nlp/util/Domain;

    .line 3
    invoke-static {}, Lcom/zte/nlp/util/Domain;->$values()[Lcom/zte/nlp/util/Domain;

    move-result-object v0

    sput-object v0, Lcom/zte/nlp/util/Domain;->$VALUES:[Lcom/zte/nlp/util/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/zte/nlp/util/Domain;->domainKey:Ljava/lang/String;

    return-void
.end method

.method private static findDomain(Ljava/lang/String;)Lcom/zte/nlp/util/Domain;
    .locals 5

    .line 22
    invoke-static {}, Lcom/zte/nlp/util/Domain;->values()[Lcom/zte/nlp/util/Domain;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    iget-object v4, v3, Lcom/zte/nlp/util/Domain;->domainKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isChatDomain(Ljava/lang/String;)Z
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/zte/nlp/util/Domain;->isGameAssistDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zte/nlp/util/Domain;->isConfirmDomain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConfirmDomain(Ljava/lang/String;)Z
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/zte/nlp/util/Domain;->findDomain(Ljava/lang/String;)Lcom/zte/nlp/util/Domain;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/zte/nlp/util/Domain;->CommonConfirm:Lcom/zte/nlp/util/Domain;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGameAssistDomain(Ljava/lang/String;)Z
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/zte/nlp/util/Domain;->findDomain(Ljava/lang/String;)Lcom/zte/nlp/util/Domain;

    move-result-object p0

    .line 37
    sget-object v0, Lcom/zte/nlp/util/Domain;->RedMagicSetting:Lcom/zte/nlp/util/Domain;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/zte/nlp/util/Domain;->RedMagicTool:Lcom/zte/nlp/util/Domain;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/nlp/util/Domain;
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
    const-class v0, Lcom/zte/nlp/util/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/nlp/util/Domain;

    return-object p0
.end method

.method public static values()[Lcom/zte/nlp/util/Domain;
    .locals 1

    .line 3
    sget-object v0, Lcom/zte/nlp/util/Domain;->$VALUES:[Lcom/zte/nlp/util/Domain;

    invoke-virtual {v0}, [Lcom/zte/nlp/util/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/nlp/util/Domain;

    return-object v0
.end method


# virtual methods
.method public getDomainKey()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/nlp/util/Domain;->domainKey:Ljava/lang/String;

    return-object p0
.end method
