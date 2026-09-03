.class Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;
.super Ljava/lang/Object;
.source "AccountUserCenterPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->changeHeadImg(Landroid/app/Activity;Ljava/io/File;)V
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

.field final synthetic val$mPhotoFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/app/Activity;Ljava/io/File;)V
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

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$c:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$mPhotoFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 41
    const-string v0, "AccountUserCenterPresenter"

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$c:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->update_info_fail:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->onFailture(Ljava/lang/String;)V

    .line 44
    const-string p0, "changeUserAvatar return null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->UpdateHeadImageSuccess()V

    .line 50
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$mPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$mPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$mPhotoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    const-string v1, "delete fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->update_avatar_success:I

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/16 v1, 0x836

    if-ne v0, v1, :cond_3

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->onTokenInvalidate()V

    goto :goto_1

    .line 61
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

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

    .line 38
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
