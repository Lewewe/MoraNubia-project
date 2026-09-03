.class public Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "NubiaLoginActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/LoginView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/LoginView;",
        "Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/LoginView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaLoginActivity"


# instance fields
.field private loginType:I

.field private mAccountLogin:Landroid/widget/TextView;

.field private mAccountPsdLayout:Landroid/widget/LinearLayout;

.field private mForgetTextView:Landroid/widget/TextView;

.field private mLoginButton:Landroid/widget/Button;

.field private mPasswdEditText:Landroid/widget/EditText;

.field private mRegTextView:Landroid/widget/TextView;

.field private mSendSmsCode:Landroid/widget/TextView;

.field private mShowBtn:Landroid/widget/ImageView;

.field private mShowPasswd:Z

.field private mSmsCode:Landroid/widget/EditText;

.field private mSmsCodeLayout:Landroid/widget/LinearLayout;

.field private mSmsLogin:Landroid/widget/TextView;

.field private mViewLoginAccount:Landroid/widget/EditText;

.field private mViewPsw:Landroid/widget/EditText;

.field private mWeiBoImageView:Landroid/widget/TextView;

.field private mWeiXinImageView:Landroid/widget/TextView;

.field user_account:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowPasswd:Z

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginType:I

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->user_account:Ljava/lang/String;

    return-void
.end method

.method private checkAccountLength(Ljava/lang/String;)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_name_empty:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->password_null:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 243
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->password_length_short:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 246
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    .line 247
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->all_space_invalid:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private loginByNubia(Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->onNetworkConnectFailed()V

    return-void

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->checkAccountLength(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "def_show_phone"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v1, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-virtual {v1, p0, v0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->LoginByUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loginBySms()V
    .locals 4

    .line 203
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->onNetworkConnectFailed()V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NubiaLoginActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v2, "def_show_phone"

    invoke-static {p0, v2, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v2, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-virtual {v2, p0, v0, v1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->LoginBySms(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public InitAccountNum()V
    .locals 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->user_account:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->user_account:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public LoginSuccess(Ljava/lang/String;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginSuccess UNI_CODE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NubiaLoginActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_login_success:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 258
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->finish()V

    return-void
.end method

.method public SetCountdownEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSendSmsCode:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->next:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSendSmsCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public SetCountdownText(Ljava/lang/String;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSendSmsCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;
    .locals 0

    .line 123
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 58
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->user_login:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->SetTitle(Ljava/lang/String;)V

    .line 59
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->account_login:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountLogin:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sms_login:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsLogin:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountPsdLayout:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sms:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsCodeLayout:Landroid/widget/LinearLayout;

    .line 65
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    .line 66
    const-string v0, "def_show_phone"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->user_account:Ljava/lang/String;

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewPsw:Landroid/widget/EditText;

    const/16 v1, 0x81

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sms_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsCode:Landroid/widget/EditText;

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->send_sms_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSendSmsCode:Landroid/widget/TextView;

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->login:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->weibologin:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mWeiBoImageView:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->weixinlogin:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mWeiXinImageView:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tx_forget_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mForgetTextView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->register:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mRegTextView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPasswdEditText:Landroid/widget/EditText;

    .line 90
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_psw:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowBtn:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 277
    sget-object p2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget p2, p2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    if-eq p1, p2, :cond_0

    sget-object p2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget p2, p2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    if-ne p1, p2, :cond_2

    .line 279
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    const-string p2, "phone"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const-string p1, "psw"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {}, Lcn/nubia/redmagickyi/user/utils/Rsa;->getInstance()Lcn/nubia/redmagickyi/user/utils/Rsa;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/user/utils/Rsa;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginByNubia(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 128
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 130
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->account_login:I

    const/high16 v1, -0x1000000

    const/high16 v2, -0x10000

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne p1, v0, :cond_0

    .line 131
    iput v3, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginType:I

    .line 132
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountLogin:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsLogin:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountPsdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mRegTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_phonenum_or_email:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1

    .line 144
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sms_login:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 145
    iput p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginType:I

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsLogin:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountLogin:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mSmsCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mAccountPsdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mRegTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_phonenum:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1

    .line 158
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->send_sms_code:I

    if-ne p1, v0, :cond_2

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewLoginAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->getIdentifyCode(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->weibologin:I

    if-ne p1, v0, :cond_3

    goto/16 :goto_1

    .line 161
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->weixinlogin:I

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    .line 162
    :cond_4
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->login:I

    if-ne p1, v0, :cond_6

    .line 163
    iget p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginType:I

    if-ne p1, v3, :cond_5

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mViewPsw:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginByNubia(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->loginBySms()V

    goto :goto_1

    .line 168
    :cond_6
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->register:I

    if-ne p1, v0, :cond_7

    .line 169
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget v0, v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 171
    :cond_7
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_psw:I

    if-ne p1, v0, :cond_a

    .line 172
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowPasswd:Z

    if-nez p1, :cond_8

    .line 173
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPasswdEditText:Landroid/widget/EditText;

    const/16 v0, 0x90

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowBtn:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->ns_passwd_see:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPasswdEditText:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 180
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowBtn:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->ns_passwd_hide:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPasswdEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 184
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 186
    :cond_9
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowPasswd:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mShowPasswd:Z

    goto :goto_1

    .line 187
    :cond_a
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tx_forget_password:I

    if-ne p1, v0, :cond_b

    .line 189
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget v0, v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 288
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    .line 289
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->ResetCountDown()V

    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->hideLoadingView()V

    .line 113
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onTokenInvalidate()V
    .locals 0

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 53
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_login_layout:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;->showLoadingDialog()V

    return-void
.end method
