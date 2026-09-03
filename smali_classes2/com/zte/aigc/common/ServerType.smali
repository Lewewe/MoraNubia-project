.class public final enum Lcom/zte/aigc/common/ServerType;
.super Ljava/lang/Enum;
.source "ServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/common/ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/common/ServerType;

.field public static final enum BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

.field public static final enum TEST_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;


# instance fields
.field public final address:Ljava/lang/String;

.field private isChecked:Z

.field public final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/common/ServerType;
    .locals 2

    .line 7
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    sget-object v1, Lcom/zte/aigc/common/ServerType;->TEST_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    filled-new-array {v0, v1}, [Lcom/zte/aigc/common/ServerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/zte/aigc/common/ServerType;

    const-string v1, "\u5546\u7528\u670d\u52a1\u5668"

    const-string v2, "https://aigc.ztems.com"

    const-string v3, "BUSINESS_SERVER_ADDRESS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aigc/common/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    .line 9
    new-instance v0, Lcom/zte/aigc/common/ServerType;

    const-string v1, "\u6d4b\u8bd5\u670d\u52a1\u5668"

    const-string v2, "https://zcloudapitest.ztems.com"

    const-string v3, "TEST_SERVER_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aigc/common/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ServerType;->TEST_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    .line 7
    invoke-static {}, Lcom/zte/aigc/common/ServerType;->$values()[Lcom/zte/aigc/common/ServerType;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/common/ServerType;->$VALUES:[Lcom/zte/aigc/common/ServerType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/zte/aigc/common/ServerType;->name:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/zte/aigc/common/ServerType;->isChecked:Z

    return-void
.end method

.method public static setCurrentServer(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/aigc/common/ServerType;
    .locals 6

    .line 27
    invoke-static {p0}, Lcom/zte/aigc/utils/PackageUtils;->isPkgZteAccountExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    sget-object p0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    .line 34
    :goto_0
    invoke-static {}, Lcom/zte/aigc/common/ServerType;->values()[Lcom/zte/aigc/common/ServerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 35
    iget-object v5, v4, Lcom/zte/aigc/common/ServerType;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v4

    .line 38
    :cond_1
    iput-boolean v2, v4, Lcom/zte/aigc/common/ServerType;->isChecked:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/zte/aigc/common/ServerType;->isChecked:Z

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/common/ServerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcom/zte/aigc/common/ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/common/ServerType;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/common/ServerType;
    .locals 1

    .line 7
    sget-object v0, Lcom/zte/aigc/common/ServerType;->$VALUES:[Lcom/zte/aigc/common/ServerType;

    invoke-virtual {v0}, [Lcom/zte/aigc/common/ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/common/ServerType;

    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/zte/aigc/common/ServerType;->isChecked:Z

    return p0
.end method
