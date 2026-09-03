.class Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;
.super Ljava/lang/Object;
.source "WebOAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {p1}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    const-string/jumbo p1, "\u7f51\u7edc\u51fa\u9519,\u8bf7\u786e\u8ba4\u7f51\u7edc\u662f\u5426\u6b63\u5e38"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 83
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/WebOAuthActivity$1;->this$0:Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-static {p0}, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;->access$000(Lcn/nubia/oauthsdk/ui/WebOAuthActivity;)V

    return-void
.end method
