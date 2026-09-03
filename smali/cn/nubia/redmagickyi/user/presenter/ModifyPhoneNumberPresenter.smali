.class public Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;
.super Lcn/nubia/redmagickyi/user/base/BasePresenter;
.source "ModifyPhoneNumberPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BasePresenter<",
        "Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModifyPasswordPresenter"


# instance fields
.field private final SEND_SMS_CODE_SECOND:I

.field private thread:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BasePresenter;-><init>()V

    const/16 v0, 0x3c

    .line 21
    iput v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->SEND_SMS_CODE_SECOND:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->thread:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->countdown(I)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object p0
.end method

.method private countdown(I)V
    .locals 7

    .line 87
    new-instance v6, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;-><init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;JJ)V

    iput-object v6, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->thread:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;

    .line 88
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public ResetCountDown()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->thread:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;->cancel()V

    :cond_0
    return-void
.end method

.method public changePhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 24
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->showLoadingView()V

    .line 25
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v1

    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 26
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;

    invoke-direct {v6, p0, p1, p2}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;-><init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->modifyMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public getIdentifyCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 56
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 57
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$2;-><init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;Landroid/app/Activity;)V

    .line 56
    invoke-virtual {v0, v1, p2, p3, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->sendSmsCodeToModifyPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method
