.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccompanyPanel"
.end annotation


# instance fields
.field private cbFsAccompany:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private layoutAccompany:Landroid/view/View;

.field private layoutFsAccompany:Landroid/view/View;

.field private radioAccompanyDurationHigh:Landroid/widget/RadioButton;

.field private radioAccompanyDurationLow:Landroid/widget/RadioButton;

.field private rgAccompanyDuration:Landroid/widget/RadioGroup;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->initData()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)Landroid/widget/RadioGroup;
    .locals 0

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->rgAccompanyDuration:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->initView()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->cbFsAccompany:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 393
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->radioAccompanyDurationHigh:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->radioAccompanyDurationLow:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_accompany:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->layoutAccompany:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_fs_accompany:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->layoutFsAccompany:Landroid/view/View;

    .line 357
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableFullScreenAccompany()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->layoutFsAccompany:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->layoutFsAccompany:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_fs_accompany:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->cbFsAccompany:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 365
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 367
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_group_accompany_duration:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->rgAccompanyDuration:Landroid/widget/RadioGroup;

    .line 368
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 369
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_accompany_duration_low:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->radioAccompanyDurationLow:Landroid/widget/RadioButton;

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_accompany_duration_high:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->radioAccompanyDurationHigh:Landroid/widget/RadioButton;

    .line 371
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_accompany_duration:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 373
    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->cbFsAccompany:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, p0, :cond_0

    .line 410
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 416
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->radio_accompany_duration_low:I

    if-ne p2, p0, :cond_0

    .line 417
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    goto :goto_0

    .line 418
    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->radio_accompany_duration_high:I

    if-ne p2, p0, :cond_1

    .line 419
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_fs_accompany:I

    if-ne p1, v0, :cond_0

    .line 403
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->cbFsAccompany:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method
