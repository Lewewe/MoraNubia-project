.class Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/ui/WebOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizeWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 147
    invoke-static {}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$200(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$302(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Z)Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$302(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Z)Z

    .line 153
    :goto_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-virtual {v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->onHideErrorUI()V

    .line 154
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 141
    invoke-static {}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 178
    invoke-static {}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError failingUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$702(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Z)Z

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 185
    invoke-static {}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceivedSslError"

    invoke-static {p0, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 160
    invoke-static {}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$400(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {v1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$400(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {p1}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$400(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getResponseType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {p0, p2}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$500(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$AuthorizeWebViewClient;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {p0, p2}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$600(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 172
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
