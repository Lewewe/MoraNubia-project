.class public Lcn/nubia/accountsdk/http/model/SignResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "SignResponse.java"


# instance fields
.field private mResponse:Lorg/json/JSONObject;

.field private uniqueCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUniqueCode()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/SignResponse;->uniqueCode:Ljava/lang/String;

    return-object p0
.end method

.method public setUniqueCode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/SignResponse;->uniqueCode:Ljava/lang/String;

    return-void
.end method
