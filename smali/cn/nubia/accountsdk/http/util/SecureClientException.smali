.class public Lcn/nubia/accountsdk/http/util/SecureClientException;
.super Ljava/lang/RuntimeException;
.source "SecureClientException.java"


# static fields
.field public static final EXCEPTION_ERROR_ENCODE:I = 0x2

.field public static final EXCEPTION_ERROR_FILE:I = 0x5

.field public static final EXCEPTION_FORBIDDEN_TOKEN:I = 0x1

.field public static final EXCEPTION_IO:I = 0x6

.field public static final EXCEPTION_OVER_TIME:I = 0x3

.field public static final EXCEPTION_REQUEST_ERROR:I = 0x4

.field private static final mErrorMsg:[Ljava/lang/String;

.field private static final serialVersionUID:J = -0xa03bbce0b0299e3L


# instance fields
.field private mAppendMsg:Ljava/lang/String;

.field private mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u7528\u6237\u53c2\u6570\u4e2d\u5305\u542b\u4e86\u4e0d\u5141\u8bb8\u5e26\u6709\u7684\u53c2\u6570"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u8fd4\u56de\u7684\u52a0\u5bc6\u7ed3\u679c\u662f\u975e\u6cd5\u7684"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u8fc7\u671f\u7684\u8fd4\u56de\u7ed3\u679c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u83b7\u53d6\u7684\u8fd4\u56de\u7ed3\u679c\u6709\u8bef"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u9519\u8bef\u7684\u6587\u4ef6\u53c2\u6570"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO\u5f02\u5e38"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mErrorMsg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 21
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/SecureClientException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/accountsdk/http/util/SecureClientException;->mErrorMsg:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcn/nubia/accountsdk/http/util/SecureClientException;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    iput p1, p0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mErrorCode:I

    .line 27
    iput-object p2, p0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mAppendMsg:Ljava/lang/String;

    return-void
.end method

.method private static isEmpty(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 44
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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


# virtual methods
.method public getAppendMsg()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mAppendMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mErrorCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/accountsdk/http/util/SecureClientException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/SecureClientException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
