.class public Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/LoginView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginPresenter"


# instance fields
.field private final SEND_SMS_CODE:I

.field private final SEND_SMS_CODE_SECOND:I

.field private thread:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    const/16 v0, 0x11

    .line 35
    iput v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->SEND_SMS_CODE:I

    const/16 v0, 0x3c

    .line 36
    iput v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->SEND_SMS_CODE_SECOND:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public GetAccessTokenByCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 176
    new-instance v0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->load(Ljava/lang/String;)Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;

    return-void
.end method

.method public GetAccountInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 156
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$4;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getInfoByAccessToken(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public LoginBySms(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->bind_phone_hint:I

    invoke-static {p1, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 131
    :cond_0
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->checkIsPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_mobile_number_error:I

    invoke-static {p1, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 135
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_empty:I

    invoke-static {p1, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/LoginView;->showLoadingView()V

    .line 140
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v1

    new-instance v6, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;

    invoke-direct {v6, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$3;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/app/Activity;)V

    const-string v3, ""

    const-string v5, ""

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public LoginByUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/LoginView;->showLoadingView()V

    .line 40
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v1

    new-instance v6, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;

    invoke-direct {v6, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/content/Context;)V

    const-string v4, ""

    const-string v5, ""

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public ResetCountDown()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->thread:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;->cancel()V

    :cond_0
    return-void
.end method

.method public countdown(I)V
    .locals 7

    .line 98
    new-instance v6, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;JJ)V

    iput-object v6, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->thread:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;

    .line 99
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$CountdownThread;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public getIdentifyCode(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->bind_phone_hint:I

    invoke-static {p1, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 63
    :cond_0
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->checkIsPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_mobile_number_error:I

    invoke-static {p1, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$2;-><init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchSigninSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
