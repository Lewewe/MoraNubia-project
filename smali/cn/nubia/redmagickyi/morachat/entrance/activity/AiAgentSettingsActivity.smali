.class public Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;,
        Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;,
        Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;,
        Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AiAgentSettingsActivity"


# instance fields
.field private accompanyPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

.field private back:Landroid/widget/ImageView;

.field private context:Landroid/app/Activity;

.field private feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

.field private modelPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;

.field private wakeupPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    return-object p0
.end method

.method private initData()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->modelPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->access$900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->wakeupPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->accompanyPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 123
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->unregisterReceiver()V

    return-void
.end method

.method public initView()V
    .locals 1

    .line 97
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->back:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->modelPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->access$500(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->wakeupPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$600(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->accompanyPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)V

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    iput-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->context:Landroid/app/Activity;

    .line 54
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_entrance_activity_settings:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->setContentView(I)V

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->modelPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;

    .line 57
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->wakeupPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    .line 58
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->accompanyPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    .line 59
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->initView()V

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->initData()V

    .line 62
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->registerReceiver(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->wakeupPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->feedbackPanel:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->shouldShowWifiDialog()Z

    return-void
.end method
