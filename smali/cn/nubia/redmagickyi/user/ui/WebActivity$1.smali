.class Lcn/nubia/redmagickyi/user/ui/WebActivity$1;
.super Landroid/webkit/WebChromeClient;
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

    .line 217
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p0

    return p0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 227
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p0

    return p0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 238
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$200(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->SetTitle(Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 247
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$402(Lcn/nubia/redmagickyi/user/ui/WebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 248
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->access$500(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V

    const/4 p0, 0x1

    return p0
.end method
