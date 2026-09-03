.class public Lcn/nubia/accountsdk/http/util/HttpRequestorResult;
.super Ljava/lang/Object;
.source "HttpRequestorResult.java"


# instance fields
.field private mResult:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mStatusCode:I

    .line 10
    iput-object p2, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 14
    iget p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mStatusCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u72b6\u6001\u7801\u4e3a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff0c\u8fd4\u56de\u7684\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->mResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
