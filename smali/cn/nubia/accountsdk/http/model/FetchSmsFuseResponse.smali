.class public Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "FetchSmsFuseResponse.java"


# instance fields
.field public commonResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

.field public zteLoginResponse:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method
