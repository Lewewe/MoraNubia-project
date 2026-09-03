.class Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;
.super Ljava/lang/Object;
.source "BaseMvpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->ReLoginDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;Landroid/content/Context;)V
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

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 102
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V

    .line 103
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->val$c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->ClearAccountInfo(Landroid/content/Context;)V

    .line 104
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->val$c:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    const-class v0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->finish()V

    return-void
.end method
