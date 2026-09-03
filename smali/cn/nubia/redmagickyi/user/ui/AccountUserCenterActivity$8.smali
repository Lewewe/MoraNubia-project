.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setSexDialog()V
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

    .line 393
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 396
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    .line 399
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$800(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    const-string v0, "1"

    invoke-virtual {p2, p0, p1, v0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$900(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    const-string v0, "2"

    invoke-virtual {p2, p0, p1, v0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
