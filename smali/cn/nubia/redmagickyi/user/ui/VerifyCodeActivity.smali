.class public Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "VerifyCodeActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/VerifyCodeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/VerifyCodeView;",
        "Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/VerifyCodeView;"
    }
.end annotation


# static fields
.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickName"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PSW:Ljava/lang/String; = "psw"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final MSG_COUNT_DOWN:I = 0x0

.field private static final MSG_REGISTER_SUCCESS:I = 0x2

.field private static final MSG_RESET_PASSWORD_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCodeActivity"


# instance fields
.field private countDownNum:I

.field private mActiveCodeTx:Landroid/widget/EditText;

.field private mGoMailTx:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field private mNewPassWord:Landroid/widget/EditText;

.field private mPhone:Ljava/lang/String;

.field private mPsw:Ljava/lang/String;

.field private mRemindEt:Landroid/widget/TextView;

.field private mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

.field private mView:Landroid/view/View;

.field private reSendCodeBtn:Landroid/widget/Button;

.field private regBtn:Landroid/widget/Button;

.field private timer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->countDownNum:I

    .line 57
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    .line 71
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;-><init>(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->countDownNum:I

    return p0
.end method

.method static synthetic access$010(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)I
    .locals 2

    .line 32
    iget v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->countDownNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->countDownNum:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->reSendCodeBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPsw:Ljava/lang/String;

    return-object p0
.end method

.method private checkInput()Z
    .locals 3

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mActiveCodeTx:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_empty:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->new_pwd_empty:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    .line 284
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->checkIsPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->psw_check_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private initArgs()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    const-string v1, "psw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPsw:Ljava/lang/String;

    .line 132
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->values()[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    return-void
.end method

.method private setGetVerifyCodeBtnDisable()V
    .locals 8

    const/16 v0, 0x3c

    .line 241
    iput v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->countDownNum:I

    .line 242
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 243
    new-instance v2, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$3;-><init>(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    .line 249
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->reSendCodeBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static startVerifyCodeActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string v1, "nickName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p1, "psw"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string p1, "phone"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string p1, "type"

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->ordinal()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    iget p2, p4, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;
    .locals 0

    .line 237
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->initData()V

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v1, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->setGetVerifyCodeBtnDisable()V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 11

    .line 143
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->input_verifycode:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->SetTitle(Ljava/lang/String;)V

    .line 144
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remind_info:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mRemindEt:Landroid/widget/TextView;

    .line 145
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->phone_verification_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mRemindEt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->go_mail2:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mGoMailTx:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mGoMailTx:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->count_down:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->reSendCodeBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->reSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->get_verification_code:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->reSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v4, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v4, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 161
    new-instance v5, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$2;

    invoke-direct {v5, p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$2;-><init>(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)V

    const-wide/16 v8, 0x3e8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v4 .. v10}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    .line 168
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->confirm_btn:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->regBtn:Landroid/widget/Button;

    .line 169
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->verify_code_et:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mActiveCodeTx:Landroid/widget/EditText;

    .line 172
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->new_password:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v3, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne v0, v3, :cond_0

    .line 176
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 254
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 256
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->count_down:I

    if-ne p1, v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->setGetVerifyCodeBtnDisable()V

    .line 258
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->getRegisterIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne p1, v0, :cond_3

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->getRetrievePasswordIdentifyCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->confirm_btn:I

    if-ne p1, v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->checkInput()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 265
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne p1, v0, :cond_2

    .line 266
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPsw:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mActiveCodeTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->createPhoneAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mVerifyType:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    if-ne p1, v0, :cond_3

    .line 268
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mPhone:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mNewPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mActiveCodeTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcn/nubia/redmagickyi/user/presenter/VerifyCodePresenter;->resetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->initArgs()V

    .line 126
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePhoneAccountSuccess()V
    .locals 1

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 296
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    .line 297
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onGetRegisterIndentifyCodeSuccess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onGetRetrievePasswordIdentifyCodeSuccess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 207
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onResetPasswordSuccess()V
    .locals 1

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTokenInvalidate()V
    .locals 0

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 138
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_register_verify_code:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->showLoadingDialog()V

    return-void
.end method
