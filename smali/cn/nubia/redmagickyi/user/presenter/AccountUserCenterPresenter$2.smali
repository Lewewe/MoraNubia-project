.class Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;
.super Ljava/lang/Object;
.source "AccountUserCenterPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->logoutAccount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/content/Context;)V
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

    .line 76
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 79
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V

    .line 80
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;->val$c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->ClearAccountInfo(Landroid/content/Context;)V

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;->val$c:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;->LoginOut()V

    return-void
.end method
