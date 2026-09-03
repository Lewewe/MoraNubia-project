.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->intoChangePhoneActivity()V
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

    .line 265
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    const-class v2, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v1, "verify_code"

    .line 273
    invoke-virtual {p1, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 272
    const-string v1, "account_verify_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

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

    .line 265
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
