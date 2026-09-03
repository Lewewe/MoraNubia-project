.class public Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "ModifyPhoneNumberActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;",
        "Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;"
    }
.end annotation


# static fields
.field private static final LENGTH_PHONE:I = 0xb


# instance fields
.field private cancel:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private getIdentifyingCode:Landroid/widget/Button;

.field private mAuthorize:Landroid/widget/CheckBox;

.field private mIdentifyingCode:Landroid/widget/EditText;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mPrivacyPolicy:Landroid/widget/TextView;

.field private mUserProtocol:Landroid/widget/TextView;

.field private mVerifyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mVerifyCode:Ljava/lang/String;

    return-void
.end method

.method private changePhoneNum()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->checkParam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mVerifyCode:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mIdentifyingCode:Landroid/widget/EditText;

    .line 117
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->changePhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkParam()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 123
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->bind_phone_hint:I

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 127
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_mobile_number_error:I

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 130
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mIdentifyingCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_empty:I

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 134
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mAuthorize:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->nubia_authorize:I

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    :cond_3
    return v2
.end method

.method private getIdentifyCode()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->bind_phone_hint:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    .line 148
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_mobile_number_error:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mVerifyCode:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->getIdentifyCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPrivacyPolicyLink()V
    .locals 3

    .line 103
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcn/nubia/redmagickyi/network/NetConfig;->PRIVATE_PROTOCOL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startUserProtocolLink()V
    .locals 3

    .line 93
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcn/nubia/redmagickyi/network/NetConfig;->SERVER_PROTOCOL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public SetCountdownEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyingCode:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyingCode:Landroid/widget/Button;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->next:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public SetCountdownText(Ljava/lang/String;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyingCode:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;
    .locals 0

    .line 34
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->initData()V

    .line 45
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_verify_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mVerifyCode:Ljava/lang/String;

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 50
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->chagne_uesr_phone:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->SetTitle(Ljava/lang/String;)V

    .line 51
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->input_phone_number:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPhoneNumber:Landroid/widget/EditText;

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->input_identifying_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mIdentifyingCode:Landroid/widget/EditText;

    .line 53
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_protocol:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mUserProtocol:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->privacy_policy:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPrivacyPolicy:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->get_identifying_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyingCode:Landroid/widget/Button;

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->authorize:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mAuthorize:Landroid/widget/CheckBox;

    .line 60
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->cancel:Landroid/widget/Button;

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_confirm:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->confirm:Landroid/widget/Button;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 158
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_protocol:I

    if-ne p1, v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->startUserProtocolLink()V

    goto :goto_0

    .line 160
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->privacy_policy:I

    if-ne p1, v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->startPrivacyPolicyLink()V

    goto :goto_0

    .line 162
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->get_identifying_code:I

    if-ne p1, v0, :cond_2

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyCode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 168
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->finish()V

    goto :goto_0

    .line 170
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_confirm:I

    if-ne p1, v0, :cond_4

    .line 172
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->changePhoneNum()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    .line 184
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->finish()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getIdentifyingCode:Landroid/widget/Button;

    .line 186
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->ResetCountDown()V

    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->getString(I)Ljava/lang/String;

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

    .line 39
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->modify_phone_number:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPhoneNumberActivity;->showLoadingDialog()V

    return-void
.end method
