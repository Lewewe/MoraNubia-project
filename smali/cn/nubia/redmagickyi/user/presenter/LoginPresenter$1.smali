.class Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->LoginByUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/content/Context;)V
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

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V
    .locals 3

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/user/view/LoginView;->hideLoadingView()V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/LoginView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->user_login_fail:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/LoginView;->onFailture(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v0

    const-string v1, "LoginPresenter"

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ERROE CODE:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/LoginView;->hideLoadingView()V

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/user/view/LoginView;->onFailture(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UNI_CODE:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->val$c:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->GetAccessTokenByCode(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Lcn/nubia/accountsdk/http/model/ValueResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V

    return-void
.end method
