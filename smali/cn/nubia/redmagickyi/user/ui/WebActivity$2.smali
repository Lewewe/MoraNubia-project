.class Lcn/nubia/redmagickyi/user/ui/WebActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/ui/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 257
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$600(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->hideLoadingView()V

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$700(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$800(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->SetTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 272
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPageStarted:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceivedError1"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 306
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onReceivedError2"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->hideLoadingView()V

    .line 309
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$700(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$800(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 277
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string p1, "account.nubia.com"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "account-test.server.nubia.cn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "account-test.nubia.com"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "res/html/agreement"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 279
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$900(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V

    const/4 p0, 0x1

    return p0

    .line 282
    :cond_1
    const-string p1, "live800"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->showLoadingView()V

    .line 285
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
