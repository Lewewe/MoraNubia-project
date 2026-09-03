.class Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->LoginBySms(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->val$c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V
    .locals 3

    .line 143
    const-string v0, "LoginPresenter"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS UNI_CODE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->GetAccessTokenByCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS ERROE CODE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$700(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/user/view/LoginView;->onFailture(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$800(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/LoginView;->hideLoadingView()V

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

    .line 140
    check-cast p1, Lcn/nubia/accountsdk/http/model/ValueResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;->onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V

    return-void
.end method
