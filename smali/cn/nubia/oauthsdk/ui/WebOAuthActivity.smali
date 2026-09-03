.class public Lcn/nubia/oauthsdk/ui/WebOAuthActivity;
.super Landroid/app/Activity;
.source "WebOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebOAuthActivity"


# instance fields
.field private isBackCanFinish:Z

.field private isLoadError:Z

.field private mLoadHeaderStr:Ljava/lang/String;

.field private mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

.field private mRefreshRL:Landroid/widget/RelativeLayout;

.field private mResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isLoadError:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isBackCanFinish:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->loadWebUrl()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->oauthHeader()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isBackCanFinish:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleImplictOARepsonse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleCodeOARepsonse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isLoadError:Z

    return p1
.end method

.method private handleCodeOARepsonse(Ljava/lang/String;)V
    .locals 5

    .line 237
    sget-object v0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->TAG:Ljava/lang/String;

    const-string v1, "handleCodeResponse"

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 239
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {v0, p1}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 246
    invoke-direct {p0, v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthToken(Lcn/nubia/oauthsdk/OAuthToken;)V

    goto :goto_0

    .line 248
    :cond_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {v1, v0, p1, v3}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthError(Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private handleImplictOARepsonse(Ljava/lang/String;)V
    .locals 3

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const-string p1, "access_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    :try_start_0
    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/WebUtil;->splitResponseParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 218
    new-instance v0, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {v0, p1}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthToken(Lcn/nubia/oauthsdk/OAuthToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError;

    const-string v1, "response_error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthError(Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 228
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance v2, Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {v2, v0, v1, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v2}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthError(Lcn/nubia/oauthsdk/OAuthError;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleOAuthError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 256
    sget-object v0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->finish()V

    return-void
.end method

.method private handleOAuthToken(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 2

    .line 264
    sget-object v0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->TAG:Ljava/lang/String;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->finish()V

    return-void
.end method

.method private initString()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetConfig;->getURLDOMAIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 66
    new-instance v4, Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-direct {v4, p0}, Lcn/nubia/oauthsdk/ui/ProcessWebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 67
    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    .line 71
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    const-string/jumbo v1, "\u7f51\u7edc\u51fa\u9519\uff0c\u70b9\u51fb\u9875\u9762\u5237\u65b0\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    iget-object v1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    new-instance v4, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;

    invoke-direct {v4, p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;-><init>(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, v2}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->setContentView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 100
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;

    invoke-direct {v1, p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;-><init>(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private loadWebUrl()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->refreshWebView()V

    return-void
.end method

.method private oauthHeader()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetConfig;->getURLDOMAIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mLoadHeaderStr:Ljava/lang/String;

    return-object p0
.end method

.method private parseIntent()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->finish()V

    return-void

    .line 111
    :cond_1
    const-string v1, "oauth_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    iput-object v1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 112
    const-string v1, "oauthinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/oauthsdk/OAuthInfo;

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    return-void
.end method

.method private refreshWebView()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/WebUtil;->getWebUrlWithOAuhtInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Ljava/lang/String;

    move-result-object v0

    .line 274
    sget-object v1, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->initWebView()V

    .line 54
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->parseIntent()V

    .line 55
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->loadWebUrl()V

    .line 56
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->initString()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 295
    invoke-static {p0}, Lcn/nubia/oauthsdk/utils/CookiesUtils;->clearCookies(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 297
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 298
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onHideErrorUI()V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isLoadError:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 284
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isLoadError:Z

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 288
    :cond_3
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mRefreshRL:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_4

    .line 289
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 194
    iget-boolean p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->isBackCanFinish:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x0

    return p0

    .line 198
    :cond_0
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "3010"

    const-string v0, "login_cancel"

    invoke-direct {p1, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->handleOAuthError(Lcn/nubia/oauthsdk/OAuthError;)V

    const/4 p0, 0x1

    return p0

    .line 202
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
