.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setNickName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 459
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 462
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$1200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$1300(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$1200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
