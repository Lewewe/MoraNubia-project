.class public final enum Lcom/zte/aigc/common/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aigc/common/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aigc/common/ErrorCode;

.field public static final enum ACCOUNT_APP_ERROR:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum BINDER_ERROR:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum CLOUD_TOKEN_INVALID:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum NETWORK_UNAVAILABLE:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/zte/aigc/common/ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/zte/aigc/common/ErrorCode;


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;

.field private final mResId:I


# direct methods
.method private static synthetic $values()[Lcom/zte/aigc/common/ErrorCode;
    .locals 8

    .line 6
    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->UNKNOWN_ERROR:Lcom/zte/aigc/common/ErrorCode;

    sget-object v1, Lcom/zte/aigc/common/ErrorCode;->NETWORK_UNAVAILABLE:Lcom/zte/aigc/common/ErrorCode;

    sget-object v2, Lcom/zte/aigc/common/ErrorCode;->NETWORK_ERROR:Lcom/zte/aigc/common/ErrorCode;

    sget-object v3, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    sget-object v4, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_APP_ERROR:Lcom/zte/aigc/common/ErrorCode;

    sget-object v5, Lcom/zte/aigc/common/ErrorCode;->BINDER_ERROR:Lcom/zte/aigc/common/ErrorCode;

    sget-object v6, Lcom/zte/aigc/common/ErrorCode;->SERVER_ERROR:Lcom/zte/aigc/common/ErrorCode;

    sget-object v7, Lcom/zte/aigc/common/ErrorCode;->CLOUD_TOKEN_INVALID:Lcom/zte/aigc/common/ErrorCode;

    filled-new-array/range {v0 .. v7}, [Lcom/zte/aigc/common/ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 7
    new-instance v6, Lcom/zte/aigc/common/ErrorCode;

    const/4 v4, 0x0

    const-string v5, "\u672a\u77e5\u9519\u8bef"

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    const/16 v3, -0x2710

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/zte/aigc/common/ErrorCode;->UNKNOWN_ERROR:Lcom/zte/aigc/common/ErrorCode;

    .line 8
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const/4 v11, 0x0

    const-string v12, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    const-string v8, "NETWORK_UNAVAILABLE"

    const/4 v9, 0x1

    const/16 v10, -0x2712

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->NETWORK_UNAVAILABLE:Lcom/zte/aigc/common/ErrorCode;

    .line 9
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const/4 v5, 0x0

    const-string v6, "\u7f51\u7edc\u5f02\u5e38"

    const-string v2, "NETWORK_ERROR"

    const/4 v3, 0x2

    const/16 v4, -0x2713

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->NETWORK_ERROR:Lcom/zte/aigc/common/ErrorCode;

    .line 10
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const-string v12, "\u5e10\u53f7\u672a\u767b\u5f55"

    const-string v8, "ACCOUNT_NOT_LOGIN"

    const/4 v9, 0x3

    const/16 v10, -0x2714

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    .line 11
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const-string v6, "\u5e10\u53f7App\u5f02\u5e38"

    const-string v2, "ACCOUNT_APP_ERROR"

    const/4 v3, 0x4

    const/16 v4, -0x2715

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_APP_ERROR:Lcom/zte/aigc/common/ErrorCode;

    .line 12
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const-string v12, "remote exception"

    const-string v8, "BINDER_ERROR"

    const/4 v9, 0x5

    const/16 v10, -0xbba

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->BINDER_ERROR:Lcom/zte/aigc/common/ErrorCode;

    .line 13
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const-string v6, "\u670d\u52a1\u5668\u9519\u8bef"

    const-string v2, "SERVER_ERROR"

    const/4 v3, 0x6

    const/16 v4, -0x2716

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->SERVER_ERROR:Lcom/zte/aigc/common/ErrorCode;

    .line 14
    new-instance v0, Lcom/zte/aigc/common/ErrorCode;

    const-string v12, "\u767b\u9646\u4fe1\u606f\u8fc7\u671f\uff0c\u8bf7\u91cd\u8bd5"

    const-string v8, "CLOUD_TOKEN_INVALID"

    const/4 v9, 0x7

    const/16 v10, 0x3eb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zte/aigc/common/ErrorCode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->CLOUD_TOKEN_INVALID:Lcom/zte/aigc/common/ErrorCode;

    .line 6
    invoke-static {}, Lcom/zte/aigc/common/ErrorCode;->$values()[Lcom/zte/aigc/common/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/common/ErrorCode;->$VALUES:[Lcom/zte/aigc/common/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/zte/aigc/common/ErrorCode;->mErrorCode:I

    .line 23
    iput p4, p0, Lcom/zte/aigc/common/ErrorCode;->mResId:I

    .line 24
    iput-object p5, p0, Lcom/zte/aigc/common/ErrorCode;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static codeOf(I)Lcom/zte/aigc/common/ErrorCode;
    .locals 5

    .line 28
    invoke-static {}, Lcom/zte/aigc/common/ErrorCode;->values()[Lcom/zte/aigc/common/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    iget v4, v3, Lcom/zte/aigc/common/ErrorCode;->mErrorCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object p0, Lcom/zte/aigc/common/ErrorCode;->UNKNOWN_ERROR:Lcom/zte/aigc/common/ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aigc/common/ErrorCode;
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
    const-class v0, Lcom/zte/aigc/common/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/common/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/zte/aigc/common/ErrorCode;
    .locals 1

    .line 6
    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->$VALUES:[Lcom/zte/aigc/common/ErrorCode;

    invoke-virtual {v0}, [Lcom/zte/aigc/common/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aigc/common/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/zte/aigc/common/ErrorCode;->mErrorCode:I

    return p0
.end method

.method public declared-synchronized getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    iget v0, p0, Lcom/zte/aigc/common/ErrorCode;->mResId:I

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/zte/aigc/common/ErrorCode;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 47
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/zte/aigc/common/ErrorCode;->mErrorMessage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
