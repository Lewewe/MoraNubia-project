.class public Lcn/nubia/oauthsdk/utils/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# static fields
.field private static mPubKeyArray:Ljava/lang/String; = "K1MOmrjCVZyI0Tdp3MV1ZZ4Y"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "XymFlHIfyEvSZqa"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;
    .locals 3

    if-eqz p0, :cond_0

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    const-string v1, "client_id"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v1, "redirect_uri"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v1, "state"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "response_type"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getResponseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "scope"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "skip_confirm"

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/OAuthInfo;->getSkipConfirm()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    sget-object p0, Lcn/nubia/oauthsdk/utils/BundleUtils;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lcn/nubia/oauthsdk/utils/BundleUtils;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 32
    sput-object p0, Lcn/nubia/oauthsdk/utils/BundleUtils;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
