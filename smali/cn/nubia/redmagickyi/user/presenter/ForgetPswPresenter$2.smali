.class Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;
.super Ljava/lang/Object;
.source "ForgetPswPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->getRetrievePasswordIdentifyCodeInner(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;)V
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

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$500(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->hideLoadingView()V

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$600(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onFailture(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROE CODE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForgetPswPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$700(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onGetRetrievePasswordIdentifyCodeSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$800(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->val$c:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/user/account/AccountHelper;->getErrorMsgId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onFailture(Ljava/lang/String;)V

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

    .line 57
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
