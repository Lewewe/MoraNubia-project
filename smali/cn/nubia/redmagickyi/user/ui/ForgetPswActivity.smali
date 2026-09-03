.class public Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "ForgetPswActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/ForgetPswView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/ForgetPswView;",
        "Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/ForgetPswView;"
    }
.end annotation


# instance fields
.field private mAppeal:Landroid/widget/TextView;

.field private mCancellation:Landroid/widget/TextView;

.field private mPhoneEmailEt:Landroid/widget/EditText;

.field private mSendBtn:Landroid/widget/Button;

.field private regBtnIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->regBtnIsActive:Z

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->regBtnIsActive:Z

    return p1
.end method

.method private checkPhoneAvalid()Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mobile_phone_empty:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 121
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->please_input_correct_phone:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return v2
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;
    .locals 0

    .line 79
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->find_passwd:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->SetTitle(Ljava/lang/String;)V

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->phone_email2:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    .line 38
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->appeal:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mAppeal:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->send_code_btn:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mSendBtn:Landroid/widget/Button;

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cancellation:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mCancellation:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget v0, v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 131
    invoke-virtual {p0, p1, p3}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->send_code_btn:I

    if-ne v0, v1, :cond_2

    .line 87
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->regBtnIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->checkPhoneAvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v0, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/user/presenter/ForgetPswPresenter;->getRetrievePasswordIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->regBtnIsActive:Z

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity$1;-><init>(Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 101
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->appeal:I

    const-string v1, "load_title"

    const-string v2, "load_url"

    if-ne v0, p1, :cond_3

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->ACCOUNT_APPEAL:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->account_appeal:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cancellation:I

    if-ne v0, p1, :cond_4

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->ACCOUNT_CANCELLATION:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->account_cancellation:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onGetRetrievePasswordIdentifyCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 73
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->verification_code_success:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->startVerifyCodeActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;)V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->getString(I)Ljava/lang/String;

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

    .line 58
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->ReLoginDialog(Landroid/content/Context;)V

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 31
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_forget_psw_main:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->showLoadingDialog()V

    return-void
.end method
