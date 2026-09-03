.class Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;
.super Ljava/lang/Object;
.source "AccountUserCenterPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

.field final synthetic val$c:Landroid/app/Activity;

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$infoType:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$c:Landroid/app/Activity;

    iput p3, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$infoType:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    if-nez p1, :cond_0

    .line 96
    const-string p1, "AccountUserCenterPresenter"

    const-string v0, "changeInfoByAccessToken return null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$400(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$c:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->update_info_fail:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->onFailture(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$500(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    iget v0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$infoType:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$info:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->UpdateAccountInfoSuccess(ILjava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->update_info_success:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

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

    .line 91
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
