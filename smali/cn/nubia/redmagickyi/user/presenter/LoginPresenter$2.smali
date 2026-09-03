.class Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->getIdentifyCode(Landroid/app/Activity;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

.field final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/app/Activity;)V
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

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->val$c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->ResetCountDown()V

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->countdown(I)V

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$400(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/user/view/LoginView;->SetCountdownEnable(Z)V

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->verification_code_success:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    const/16 v2, 0x7df

    if-ne v1, v2, :cond_2

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->account_not_regiest:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 87
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

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

    .line 70
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
