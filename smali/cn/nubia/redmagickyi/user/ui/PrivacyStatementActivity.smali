.class public Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseActivity;
.source "PrivacyStatementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_URL:Ljava/lang/String; = "url"

.field private static final PRODUCT_NEW_DETAIL:Ljava/lang/String; = "version="


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mLoadUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;-><init>()V

    return-void
.end method

.method private getZoomDensity()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 66
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    const/16 v1, 0x78

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa0

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf0

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->finish()V

    const/4 v0, 0x0

    .line 98
    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    .line 53
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "?"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected initView()V
    .locals 3

    .line 33
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mBtn:Landroid/widget/Button;

    .line 34
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    .line 36
    new-instance v0, Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/util/WebViewAgent;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->setLoadOnlineUrlWithBrowser(Z)V

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->getZoomDensity()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->onBackPressed()V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->onDestroy()V

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/PrivacyStatementActivity;->mWebViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->destroy()V

    :cond_0
    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 28
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_register_privacy_statement_view:I

    return p0
.end method
