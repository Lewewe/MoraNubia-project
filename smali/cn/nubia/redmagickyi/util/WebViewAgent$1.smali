.class Lcn/nubia/redmagickyi/util/WebViewAgent$1;
.super Ljava/lang/Object;
.source "WebViewAgent.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/WebViewAgent;->prepareWebViewProcess(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$1;->val$context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$1;->val$context:Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;-><init>(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
