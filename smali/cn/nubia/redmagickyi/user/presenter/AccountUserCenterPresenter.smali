.class public Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "AccountUserCenterPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountUserCenterPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public changeHeadImg(Landroid/app/Activity;Ljava/io/File;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getTokenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 36
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 37
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/app/Activity;Ljava/io/File;)V

    .line 36
    invoke-virtual {v0, v1, p2, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->changeUserAvatar(Ljava/lang/String;Ljava/io/File;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public logoutAccount(Landroid/content/Context;)V
    .locals 3

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->sure_to_logout:I

    .line 70
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$3;-><init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->confirm:I

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$2;-><init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-void
.end method

.method public setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    .line 89
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 90
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$4;-><init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;Landroid/app/Activity;ILjava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1, p3, p2, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->changeInfoByAccessToken(Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
