.class Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;
.super Ljava/lang/Object;
.source "WakeupTrainingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation


# static fields
.field private static final LAST_ONE:I = 0x4


# instance fields
.field private back:Landroid/widget/ImageView;

.field private callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

.field private layoutTrainAfter:Landroid/view/View;

.field private layoutTrainBefore:Landroid/view/View;

.field private layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

.field private mVibrator:Landroid/os/Vibrator;

.field private reLightLock:Landroid/os/PowerManager$WakeLock;

.field private speechBar:Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

.field private tvCommit:Landroid/widget/TextView;

.field private tvHintTitle:Landroid/widget/TextView;

.field private tvTrainAfter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    .line 127
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->initViews()V

    .line 128
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->updateUIVisible(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->speechBar:Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvHintTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/os/Vibrator;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/view/View;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainBefore:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/view/View;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainAfter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->showWaitForTrainView()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->onResume()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->onStop()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->onDestroy()V

    return-void
.end method

.method private initViews()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->back:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->speech_bar:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->speechBar:Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    const-wide/16 v1, 0x0

    .line 136
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_hint_title:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvHintTitle:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_train_end:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvTrainAfter:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_end_msg_begin:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_card_header_desc_2:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_end_msg_end:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvTrainAfter:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_train_before:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainBefore:Landroid/view/View;

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_train_after:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainAfter:Landroid/view/View;

    const/16 v2, 0x8

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_training:I

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    .line 150
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    .line 153
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_before_btn:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private lightScreen(Landroid/content/Context;)V
    .locals 2

    .line 306
    const-string v0, "lightScreen----start"

    const-string v1, "WakeupTraining"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 309
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "lightScreen----newWakeLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3000001a

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    const-string p1, "lightScreen----acquire WakeLock"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    :cond_1
    :goto_0
    const-string p0, "lightScreen----end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDestroy()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->unLightScreen()V

    return-void
.end method

.method private onResume()V
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WakeupTraining"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStop()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->showWaitForTrainView()V

    :cond_0
    return-void
.end method

.method private showTrainingView()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainBefore:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainAfter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->getRecordingTimes()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->getRecordingTimes()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setRecordTimesAndWord(ILjava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->getCurrentProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->moveToNext(I)V

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvHintTitle:Landroid/widget/TextView;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_mid_title_begin:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->speechBar:Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_before_btn:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showWaitForTrainView()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainBefore:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTrainAfter:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->layoutTraining:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->onPause()V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvHintTitle:Landroid/widget/TextView;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_before_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->speechBar:Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_before_btn:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startTraining()V
    .locals 2

    .line 176
    const-string v0, "WakeupTraining"

    const-string v1, "startTraining: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->lightScreen(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)V

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->showTrainingView()V

    return-void
.end method

.method private declared-synchronized unLightScreen()V
    .locals 2

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "WakeupTraining"

    const-string v1, "releaseLightScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->reLightLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateUIVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->showWaitForTrainView()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 161
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->onBackPressed()V

    goto :goto_0

    .line 163
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    if-ne p1, v0, :cond_3

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->access$900(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->startWakeup()Z

    .line 168
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->finish()V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->startTraining()V

    :cond_3
    :goto_0
    return-void
.end method
