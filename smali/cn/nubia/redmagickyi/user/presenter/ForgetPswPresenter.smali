.class public Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "ForgetPswPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/ForgetPswView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ForgetPswPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->getRetrievePasswordIdentifyCodeInner(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method private getRetrievePasswordIdentifyCodeInner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->hideLoadingView()V

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onNetworkConnectFailed()V

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->showLoadingView()V

    .line 57
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$2;-><init>(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchRetrievePasswordSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public getRetrievePasswordIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->onNetworkConnectFailed()V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ForgetPswView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ForgetPswView;->showLoadingView()V

    .line 27
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->isAccountExis(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
