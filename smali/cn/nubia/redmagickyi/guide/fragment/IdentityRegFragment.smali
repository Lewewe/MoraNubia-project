.class public Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "IdentityRegFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;


# instance fields
.field private birthSql:Ljava/lang/String;

.field private chioceBirthTitle:Landroid/widget/TextView;

.field private commit:Landroid/widget/TextView;

.field datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

.field day:I

.field private initDay:I

.field private initMonth:I

.field private initYear:I

.field private listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

.field mooth:I

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private rootView:Landroid/view/View;

.field private secret:Landroid/widget/RadioButton;

.field private starff:Landroid/widget/RadioButton;

.field private student:Landroid/widget/RadioButton;

.field private userTypeRadioGroup:Landroid/widget/RadioGroup;

.field private userTypeTitle:Landroid/widget/TextView;

.field private user_type:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->birthSql:Ljava/lang/String;

    const/16 v0, 0x7d0

    .line 188
    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initYear:I

    const/4 v0, 0x6

    .line 189
    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initMonth:I

    const/16 v0, 0xf

    .line 190
    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initDay:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-object p0
.end method

.method private sendIdentityTrack()V
    .locals 4

    .line 159
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    .line 164
    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_secret:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne v0, v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_student:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne v0, v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_starff:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 172
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mora_oobe_identity"

    const-string v3, "mora_identity"

    invoke-virtual {v1, p0, v2, v3, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public OnSelectedChanged([I[I)V
    .locals 0

    const/4 p1, 0x0

    .line 194
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->year:I

    const/4 p1, 0x1

    .line 195
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->mooth:I

    const/4 p1, 0x2

    .line 196
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->day:I

    return-void
.end method

.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 55
    instance-of v0, p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 85
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 47
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public getDateBySqlSetting(ILjava/lang/String;)I
    .locals 0

    .line 178
    :try_start_0
    const-string p0, "-"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 179
    array-length p2, p0

    if-lez p2, :cond_0

    array-length p2, p0

    if-lt p2, p1, :cond_0

    .line 180
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_type_radio_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->userTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 92
    new-instance v1, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;-><init>(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->student:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->student:Landroid/widget/RadioButton;

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->starff:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->starff:Landroid/widget/RadioButton;

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->secret:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->secret:Landroid/widget/RadioButton;

    .line 110
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->reg_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->userTypeTitle:Landroid/widget/TextView;

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->birth_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->chioceBirthTitle:Landroid/widget/TextView;

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->commit:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->commit:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->datepicker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guide/DatePickerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    .line 119
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUser_birthday()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initYear:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initYear:I

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initMonth:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initMonth:I

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initDay:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result p1

    :goto_2
    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initDay:I

    .line 126
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initYear:I

    iget v1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initMonth:I

    iget v2, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setDate(III)V

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->addOnSelectedChangingListener(Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;)V

    .line 128
    iget p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initYear:I

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->year:I

    .line 129
    iget p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initMonth:I

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->mooth:I

    .line 130
    iget p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initDay:I

    iput p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->day:I

    return-void
.end method

.method public initdata()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user_type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->secret:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne v0, v1, :cond_1

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->student:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne v0, v1, :cond_2

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->starff:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    if-ne p1, v0, :cond_1

    .line 148
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

    if-eqz p1, :cond_0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->mooth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->day:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->birthSql:Ljava/lang/String;

    .line 150
    const-string v0, "user_birthday"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "has_set_not_first"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;->regnize()V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->sendIdentityTrack()V

    :cond_1
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->fragment_app_start_identify_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->rootView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->CheckCareSettingData()V

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initView(Landroid/view/View;)V

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initdata()V

    return-void
.end method
