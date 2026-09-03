.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackPanel"
.end annotation


# instance fields
.field private cbMobileData:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private cbShowWords:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private cbWifi1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private cbWifi2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private layoutFeedback:Landroid/view/View;

.field private layoutMobileMute:Landroid/view/View;

.field private layoutMute:Landroid/view/View;

.field private layoutMuteCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

.field private layoutShowWords:Landroid/view/View;

.field private layoutWifiMute1:Landroid/view/View;

.field private layoutWifiMute2:Landroid/view/View;

.field private layoutWifiName1:Landroid/view/View;

.field private layoutWifiName2:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

.field private tvWifiName1:Landroid/widget/TextView;

.field private tvWifiName2:Landroid/widget/TextView;

.field private tvWifiTitle1:Landroid/widget/TextView;

.field private tvWifiTitle2:Landroid/widget/TextView;

.field private wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;


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

    .line 424
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;
    .locals 0

    .line 424
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiTitle1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;
    .locals 0

    .line 424
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiTitle2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initData()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initView()V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbShowWords:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 510
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 511
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMuteCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    goto/16 :goto_2

    .line 514
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMuteCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->expand()V

    .line 516
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName1:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_settings_feedback_panel_wifi_empty:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 524
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName2:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_settings_feedback_panel_wifi_empty:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 528
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 532
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMobileData:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method private initView()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_feedback:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutFeedback:Landroid/view/View;

    .line 433
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isGameAgentWindow()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutFeedback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_show_words:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutShowWords:Landroid/view/View;

    .line 437
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->cb_show_words:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbShowWords:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 439
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 441
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_mute:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMute:Landroid/view/View;

    .line 442
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->cb_mute:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 444
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_mute_custom:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMuteCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    .line 447
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_1:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 448
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 449
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_check_1:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName1:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_1_title:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiTitle1:Landroid/widget/TextView;

    .line 451
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_1:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiName1:Landroid/view/View;

    .line 452
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_network_check_1:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute1:Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_2:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 455
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_check_2:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiName2:Landroid/widget/TextView;

    .line 457
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_2_title:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiTitle2:Landroid/widget/TextView;

    .line 458
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_2:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiName2:Landroid/view/View;

    .line 459
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_network_check_2:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->mobile_data:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMobileData:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 462
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 463
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->care_network_check_3:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMobileMute:Landroid/view/View;

    .line 464
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isSupportedSimCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMobileMute:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMobileMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 473
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 476
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutMobileMute:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 478
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 479
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 481
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 482
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 483
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 484
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 485
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->layoutWifiMute2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->tvWifiTitle2:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lcn/nubia/redmagickyi/care/view/WifiDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/care/view/WifiDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 599
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbShowWords:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_0

    .line 579
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_1

    .line 581
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 582
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initData()V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi1:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_2

    .line 584
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 585
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initData()V

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbWifi2:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_3

    .line 587
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 588
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initData()V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMobileData:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_4

    .line 590
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 591
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 539
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_show_words:I

    if-ne p1, v0, :cond_0

    .line 540
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbShowWords:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 541
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_mute:I

    if-ne p1, v0, :cond_1

    .line 542
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMute:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 543
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_1:I

    if-ne p1, v0, :cond_2

    .line 544
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    goto :goto_0

    .line 557
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_layout_2:I

    if-ne p1, v0, :cond_3

    .line 558
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->showWifiDalog(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    goto :goto_0

    .line 571
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->care_network_check_3:I

    if-ne p1, v0, :cond_4

    .line 572
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->cbMobileData:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 0

    .line 603
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowWifiDialog()Z
    .locals 0

    .line 610
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->wifiDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->shouldShowWifiDialog()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
