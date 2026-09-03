.class public abstract Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseActivity;
.source "BaseMvpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$LoadingDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcn/nubia/redmagickyi/user/base/BaseView;",
        "P:",
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "TV;>;>",
        "Lcn/nubia/redmagickyi/user/base/BaseActivity;"
    }
.end annotation


# instance fields
.field private mLoadingDialog:Landroid/app/Dialog;

.field protected mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)Landroid/app/Dialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mLoadingDialog:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public ReLoginDialog(Landroid/content/Context;)V
    .locals 3

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->account_token_expired:I

    .line 93
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$4;-><init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->confirm:I

    new-instance v2, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$3;-><init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-void
.end method

.method protected abstract createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected createProgressDialog()Landroid/app/Dialog;
    .locals 1

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$LoadingDialog;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$LoadingDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$LoadingDialog;->setCancelable(Z)V

    .line 46
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 79
    new-instance v0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;-><init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    .line 53
    move-object v1, p0

    check-cast v1, Lcn/nubia/redmagickyi/user/base/BaseView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/base/BasePresenter;->attach(Lcn/nubia/redmagickyi/user/base/BaseView;)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->createProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mLoadingDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->createProgressDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mLoadingDialog:Landroid/app/Dialog;

    .line 37
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    .line 39
    check-cast p0, Lcn/nubia/redmagickyi/user/base/BaseView;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;->attach(Lcn/nubia/redmagickyi/user/base/BaseView;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->onDestroy()V

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;->detach()V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$1;-><init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
