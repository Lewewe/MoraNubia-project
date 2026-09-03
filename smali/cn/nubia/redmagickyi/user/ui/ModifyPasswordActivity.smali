.class public Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "ModifyPasswordActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;",
        "Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;"
    }
.end annotation


# static fields
.field public static final RESULT_CODE_UPDATE_PWD_SUCCESS:I = 0x3e8


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mConfirm:Landroid/widget/Button;

.field private mConfirmfrPasswd:Landroid/widget/EditText;

.field private mNewPasswd:Landroid/widget/EditText;

.field private mOldPasswd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private changePassWord()V
    .locals 3

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->checkPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mOldPasswd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mNewPasswd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->changePassWord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPassword()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mOldPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->old_pwd_empty:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mOldPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->old_pwd_length:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mNewPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->new_pwd_empty:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 91
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mNewPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 92
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->new_pwd_length:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 95
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirmfrPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->confirm_pwd_empty:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 99
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirmfrPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 100
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->confirm_pwd_length:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 104
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirmfrPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->checkIsPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->psw_check_two:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 108
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mNewPasswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirmfrPasswd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->psw_not_same:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public UpdatePasSuccess()V
    .locals 1

    const/16 v0, 0x3e8

    .line 128
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;
    .locals 0

    .line 25
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 35
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->change_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->SetTitle(Ljava/lang/String;)V

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->input_old_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mOldPasswd:Landroid/widget/EditText;

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->input_new_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mNewPasswd:Landroid/widget/EditText;

    .line 38
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->confirm_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirmfrPasswd:Landroid/widget/EditText;

    .line 39
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_confirm:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mConfirm:Landroid/widget/Button;

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->mCancel:Landroid/widget/Button;

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 119
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_confirm:I

    if-ne p1, v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->changePassWord()V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->finish()V

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

.method public onNetworkConnectFailed()V
    .locals 2

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->ReLoginDialog(Landroid/content/Context;)V

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 30
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->modify_password_activity:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;->showLoadingDialog()V

    return-void
.end method
