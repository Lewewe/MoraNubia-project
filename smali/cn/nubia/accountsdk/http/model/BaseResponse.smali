.class public Lcn/nubia/accountsdk/http/model/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private mErrorCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    .line 30
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    .line 35
    iput-object p2, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget p0, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    invoke-static {p0}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method setErrorCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    return-void
.end method

.method setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/BaseResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
