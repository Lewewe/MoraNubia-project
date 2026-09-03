.class Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;
.super Ljava/lang/Object;
.source "VerifyCodePresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->getRegisterIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;Landroid/content/Context;)V
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

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;->hideLoadingView()V

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;->onFailture(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROE CODE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifyCodePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;->onGetRegisterIndentifyCodeSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->val$c:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/user/account/AccountHelper;->getErrorMsgId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/user/view/VerifyCodeView;->onFailture(Ljava/lang/String;)V

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

    .line 26
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
