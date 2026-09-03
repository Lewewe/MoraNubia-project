.class public Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "ModifyPasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModifyPasswordPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public changePassWord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;->showLoadingView()V

    .line 23
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 24
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->changeAccountPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
