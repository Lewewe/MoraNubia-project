.class public Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "ServiceDescribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$PrivacyTextView;,
        Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;
    }
.end annotation


# instance fields
.field private agreementTx:Landroid/widget/TextView;

.field private cancel:Landroid/widget/TextView;

.field private commit:Landroid/widget/TextView;

.field private listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

.field private rootView:Landroid/view/View;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method private getCtaSentenceEndPunctuation()Ljava/lang/String;
    .locals 3

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    .line 115
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Japan:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    const-string v2, "."

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->allow_permissions:I

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isStringFromDefaultValues(Landroid/content/Context;ILjava/util/Locale;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    .line 119
    :cond_2
    const-string/jumbo p0, "\u3002"

    return-object p0
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 49
    instance-of v0, p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 72
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 41
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->guide_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->title:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->agreement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->commit:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->commit:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->cancel:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->cancel:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isSupportedSimCard()Z

    move-result p1

    const-string v0, " "

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mobile_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->and:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->wlan_network:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->allow_permissions:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->privacy_policy:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v1, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$PrivacyTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$PrivacyTextView;-><init>(Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->and:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 103
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->agreement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    invoke-direct {v0, p0, v1, v4}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;-><init>(Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p1, v0, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 107
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getCtaSentenceEndPunctuation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->click_agree:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->app_start_commit_accept:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->agreementTx:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public loadUrlByWebView(Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 129
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

    if-eqz p0, :cond_1

    .line 131
    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;->CommitBtn()V

    goto :goto_0

    .line 133
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cancel:I

    if-ne p1, v0, :cond_1

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;

    if-eqz p0, :cond_1

    .line 135
    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;->Cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->fragment_app_start_service_describ:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->rootView:Landroid/view/View;

    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->initView(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->rootView:Landroid/view/View;

    return-object p0
.end method
