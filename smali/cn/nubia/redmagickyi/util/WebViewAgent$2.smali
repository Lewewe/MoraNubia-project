.class Lcn/nubia/redmagickyi/util/WebViewAgent$2;
.super Ljava/lang/Object;
.source "WebViewAgent.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/WebViewAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$2;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$2;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$000(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$2;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$100(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$2;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$100(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$2;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->access$000(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
