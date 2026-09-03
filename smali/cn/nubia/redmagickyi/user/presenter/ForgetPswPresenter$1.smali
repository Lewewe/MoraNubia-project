.class Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;
.super Ljava/lang/Object;
.source "ForgetPswPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->getRetrievePasswordIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V
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

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->hideLoadingView()V

    .line 33
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onFailture(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$c:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$account:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->hideLoadingView()V

    .line 40
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->access$400(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->val$c:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/user/account/AccountHelper;->getErrorMsgId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onFailture(Ljava/lang/String;)V

    .line 42
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UNI_CODE:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "unique_code"

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ForgetPswPresenter"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
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

    .line 27
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
