.class public Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "WakeupTrainingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;,
        Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;
    }
.end annotation


# static fields
.field private static final KEY_WAKEUP_ENABLE:Ljava/lang/String; = "key_wakeup_enable"

.field private static final KEY_WAKEUP_WORD:Ljava/lang/String; = "key_wakeup_word"

.field private static final KEY_WAKEUP_WORD_DEFAULT:Ljava/lang/String; = "key_wakeup_word_default"

.field private static final TAG:Ljava/lang/String; = "WakeupTraining"


# instance fields
.field private dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

.field private enableWakeup:Z

.field private keyphrase:Ljava/lang/String;

.field private pdk:Z

.field private uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->pdk:Z

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->pdk:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->keyphrase:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->enableWakeup:Z

    return p0
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 2

    .line 77
    const-string v0, "key_wakeup_word_default"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->pdk:Z

    .line 78
    const-string v0, "key_wakeup_word"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->keyphrase:Ljava/lang/String;

    .line 79
    const-string v0, "key_wakeup_enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->enableWakeup:Z

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resolveIntent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->pdk:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", keyphrase:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->keyphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", enableWakeup:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->enableWakeup:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WakeupTraining"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static startTrainingActivity(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v1, "key_wakeup_word_default"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    const-string p1, "key_wakeup_word"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string p1, "key_wakeup_enable"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected initOrientation()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 71
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->setRequestedOrientationFromAndroid(I)V

    :cond_0
    const/4 v0, 0x7

    .line 73
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->setRequestedOrientationFromAndroid(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_entrance_activity_training:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->initOrientation()V

    .line 57
    const-string p1, "WakeupTraining"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    .line 60
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;Lcom/zte/wakeup/training/TrainingManager$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    .line 62
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    const/4 p1, 0x0

    .line 64
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->gotoSystemSettings(Landroid/content/Context;Ljava/lang/Integer;Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$500(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRestart()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestart:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupTraining"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupTraining"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$200(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->uiManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->dataManager:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V

    return-void
.end method
