.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->sendVerificationCode()V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 2

    .line 235
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 237
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_success:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 238
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->cancel()V

    .line 241
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;I)V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$400(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

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

    .line 232
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
