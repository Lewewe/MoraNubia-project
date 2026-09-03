.class public Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "RegisterPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/RegisterView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public isAccountExis(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast p0, Lcn/nubia/redmagickyi/user/view/RegisterView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->onNetworkConnectFailed()V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/RegisterView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->showLoadingView()V

    .line 27
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->isAccountExis(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
