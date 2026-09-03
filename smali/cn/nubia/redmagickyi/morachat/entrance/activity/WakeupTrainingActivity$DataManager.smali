.class Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;
.super Ljava/lang/Object;
.source "WakeupTrainingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

.field private trainingManager:Lcom/zte/wakeup/training/TrainingManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;Lcom/zte/wakeup/training/TrainingManager$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v6, Lcom/zte/wakeup/training/TrainingManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Z

    move-result v2

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager$1;

    invoke-direct {v4, p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)V

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zte/wakeup/training/TrainingManager;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/zte/wakeup/training/IWakeupAction;Lcom/zte/wakeup/training/TrainingManager$Callback;)V

    iput-object v6, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)Z
    .locals 0

    .line 335
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->isTrainFinished()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->startTraining()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->onStop()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->onDestroy()V

    return-void
.end method

.method private isTrainFinished()Z
    .locals 0

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->isTrainFinished()Z

    move-result p0

    return p0
.end method

.method private onDestroy()V
    .locals 0

    .line 387
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->release()V

    return-void
.end method

.method private onStop()V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->stopTraining()V

    return-void
.end method

.method private startTraining()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->startTraining()V

    return-void
.end method

.method private stopTraining()V
    .locals 0

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->stopTraining()V

    return-void
.end method


# virtual methods
.method public getCurrentProgress()I
    .locals 0

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->getCurrentProgress()I

    move-result p0

    return p0
.end method

.method public getRecordingTimes()I
    .locals 0

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->trainingManager:Lcom/zte/wakeup/training/TrainingManager;

    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager;->getRecordingTimes()I

    move-result p0

    return p0
.end method
