.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;
.super Ljava/lang/Object;
.source "EmailFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loadList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V
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

    .line 615
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 4

    .line 618
    const-string v0, "EmailFragment"

    if-nez p1, :cond_0

    .line 620
    const-string p1, "load data failed, reason: no login"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->onHideFragment()V

    goto :goto_0

    .line 622
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz p1, :cond_1

    .line 624
    const-string p1, "load data begin, get token first"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->val$view:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-static {p1, v3, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 626
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$3502(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    goto :goto_0

    .line 629
    :cond_1
    const-string p1, "load data begin, token exist"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->val$view:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-static {p1, v3, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 631
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcn/nubia/redmagickyi/network/model/LoginResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V

    :goto_0
    return-void
.end method
