.class public abstract Lcn/nubia/oauthsdk/OAuthCallBackAdapter;
.super Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;
.source "OAuthCallBackAdapter.java"


# instance fields
.field public mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;-><init>()V

    .line 9
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    return-void
.end method
