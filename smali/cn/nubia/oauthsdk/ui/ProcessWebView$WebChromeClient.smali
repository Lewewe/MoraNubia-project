.class public Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ProcessWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/ui/ProcessWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/ui/ProcessWebView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;->this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x8

    if-ne p2, v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;->this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->access$000(Lcn/nubia/oauthsdk/ui/ProcessWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;->this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->access$000(Lcn/nubia/oauthsdk/ui/ProcessWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 34
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;->this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->access$000(Lcn/nubia/oauthsdk/ui/ProcessWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;->this$0:Lcn/nubia/oauthsdk/ui/ProcessWebView;

    invoke-static {v0}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->access$000(Lcn/nubia/oauthsdk/ui/ProcessWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
