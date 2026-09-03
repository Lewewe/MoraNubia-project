.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeupPanel"
.end annotation


# instance fields
.field private customWakeupDialog:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

.field private isSwitchToCustom:Ljava/lang/Boolean;

.field private layoutWakeupWords:Landroid/view/View;

.field private layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

.field private layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

.field private radioWakeupWordsCustom:Landroid/widget/RadioButton;

.field private radioWakeupWordsDefault:Landroid/widget/RadioButton;

.field private rgWakeupWords:Landroid/widget/RadioGroup;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

.field private tvWakeupWordsCustom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isCustomWakeupWordOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    .line 201
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->customWakeupDialog:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    return-void
.end method

.method static synthetic access$1402(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 190
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Ljava/lang/String;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->startTrainingActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;
    .locals 0

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->customWakeupDialog:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)Landroid/widget/RadioGroup;
    .locals 0

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->rgWakeupWords:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initView()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 269
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getDefaultWakeupWords()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsDefault:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->tvWakeupWordsCustom:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 274
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isCustomWakeupWordOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    .line 276
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsCustom:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    .line 281
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->expand()V

    .line 284
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->expand()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsDefault:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasTrainedFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->expand()V

    goto :goto_0

    .line 293
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_wakeup_words:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWords:Landroid/view/View;

    const/16 v1, 0x8

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_wakeup_words_default:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsDefault:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_wakeup_words_custom:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsCustom:Landroid/widget/RadioButton;

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_group_wakeup_words:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->rgWakeupWords:Landroid/widget/RadioGroup;

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_wakeup_words_custom:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    .line 242
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_wakeup_words_custom:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->tvWakeupWordsCustom:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_wakeup_words_record:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    .line 246
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_wakeup_words:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startTrainingActivity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    .line 314
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->radioWakeupWordsDefault:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->startTrainingActivity(Landroid/content/Context;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 319
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_wakeup_words_default:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    .line 320
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    .line 321
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasTrainedFilePdk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->setCustomWakeupWordOff()V

    .line 323
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 327
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->setCustomWakeupWordOff()V

    .line 328
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    .line 331
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsRecord:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->performClick()Z

    goto :goto_0

    .line 334
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_wakeup_words_custom:I

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    .line 335
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    .line 336
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 338
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    .line 339
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->layoutWakeupWordsCustom:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->performClick()Z

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->setCustomWakeupWordOn()V

    .line 342
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->initData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 301
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_wakeup_words_custom:I

    if-ne p1, v0, :cond_0

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->customWakeupDialog:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_wakeup_words_record:I

    if-ne p1, v0, :cond_2

    .line 304
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->isSwitchToCustom:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCustomWakeupWord()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->startTrainingActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getDefaultWakeupWords()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->startTrainingActivity(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
