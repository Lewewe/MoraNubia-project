.class Lcn/nubia/redmagickyi/util/WebViewAgent$4;
.super Ljava/lang/Object;
.source "WebViewAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/WebViewAgent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

.field final synthetic val$webViewClient:Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/WebViewAgent;Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->val$webViewClient:Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->val$webViewClient:Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;

    iget-object p1, p1, Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->val$webViewClient:Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$200(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$200(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$300(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$4;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$300(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadData(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
