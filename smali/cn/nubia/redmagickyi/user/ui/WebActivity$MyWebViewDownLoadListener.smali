.class Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/ui/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;Lcn/nubia/redmagickyi/user/ui/WebActivity$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;-><init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 371
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 372
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;->this$0:Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
