.class public Lcn/nubia/redmagickyi/user/ui/RegisterActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/RegisterView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/RegisterView;",
        "Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/RegisterView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterActivity"

.field private static changer:Z = false

.field private static mima:Ljava/lang/String;

.field private static name:Ljava/lang/String;


# instance fields
.field private isShow:Z

.field private mButton:Landroid/widget/Button;

.field private mPhoneEmailEt:Landroid/widget/EditText;

.field private mPrivateProtocol:Landroid/widget/TextView;

.field private mPswEt:Landroid/widget/EditText;

.field private mServerCheckBox:Landroid/widget/CheckBox;

.field private mServerProtocol:Landroid/widget/TextView;

.field private mShowBtn:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/ui/RegisterActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private checkAccountExis()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast v0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->isAccountExis(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkInfo()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->nubia_authorize:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 205
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->checkPhoneAvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->checkPswAvalid()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private checkPhoneAvalid()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 227
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mobile_phone_empty:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 231
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mobile_phone_wrong_format:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return v2
.end method

.method private checkPswAvalid()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 212
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->password_null:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v2

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 217
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->password_length_short:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private register()V
    .locals 4

    .line 185
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->checkInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    const-string v3, ""

    invoke-static {p0, v3, v0, v1, v2}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->startVerifyCodeActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;
    .locals 0

    .line 144
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->user_register:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->SetTitle(Ljava/lang/String;)V

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->phone_email:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->psw1:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    .line 85
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_psw:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mShowBtn:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->reg_btn:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mButton:Landroid/widget/Button;

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    sget-object v1, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    sget-object v1, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mima:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->server_protocol:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerProtocol:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->private_protocol:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPrivateProtocol:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPrivateProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->read_protocol:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerCheckBox:Landroid/widget/CheckBox;

    .line 101
    sget-boolean v1, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->changer:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcn/nubia/redmagickyi/user/ui/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity$1;-><init>(Lcn/nubia/redmagickyi/user/ui/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onAccountNotExist()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->register()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iget v0, v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 195
    invoke-virtual {p0, p1, p3}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 151
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->server_protocol:I

    const-string v1, "android.intent.action.VIEW"

    if-ne p1, v0, :cond_0

    .line 152
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->SERVER_PROTOCOL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 154
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->private_protocol:I

    if-ne p1, v0, :cond_1

    .line 156
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->PRIVATE_PROTOCOL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 158
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->reg_btn:I

    if-ne p1, v0, :cond_3

    .line 159
    const-string p1, "RegisterActivity"

    const-string v0, " red btn press"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->checkInfo()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 163
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->checkAccountExis()V

    goto :goto_1

    .line 164
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_psw:I

    if-ne p1, v0, :cond_6

    .line 165
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->isShow:Z

    if-nez p1, :cond_4

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    const/16 v0, 0x90

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mShowBtn:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->ns_passwd_see:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 169
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mShowBtn:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->ns_passwd_hide:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 174
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 176
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->isShow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->isShow:Z

    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 50
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->name:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 55
    const-string p0, "mima"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mima:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    const-string p0, "changer"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->changer:Z

    :cond_2
    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 129
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPhoneEmailEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mPswEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mima"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->mServerCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    const-string v0, "changer"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTokenInvalidate()V
    .locals 0

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 77
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_register_main:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->showLoadingDialog()V

    return-void
.end method
