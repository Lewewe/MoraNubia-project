.class public interface abstract Lcn/nubia/oauthsdk/IOAuthManagerNew;
.super Ljava/lang/Object;
.source "IOAuthManagerNew.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IUserInfoManager;


# virtual methods
.method public abstract appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
.end method

.method public abstract getOAuthInfo(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
.end method

.method public abstract jumptoCertificationActivity(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/oauthsdk/utils/CetificationLackingException;
        }
    .end annotation
.end method

.method public abstract ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
.end method

.method public abstract ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
.end method

.method public abstract webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
.end method

.method public abstract webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
.end method
