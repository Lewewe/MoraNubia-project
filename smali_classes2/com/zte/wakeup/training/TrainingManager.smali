.class public Lcom/zte/wakeup/training/TrainingManager;
.super Ljava/lang/Object;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/wakeup/training/TrainingManager$Callback;,
        Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;,
        Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;,
        Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;,
        Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;
    }
.end annotation


# static fields
.field private static final DURATION_OF_TRAINING_RECORDING:I = 0xbb8

.field private static final MAX_NORMALIZED_VOLUME:D = 70.0

.field private static final MINI_VOLUME:D = 10.0

.field private static final MSG_START_TRAINING_RECORDING:I = 0x2

.field private static final MSG_STOP_TRAINING_RECORDING:I = 0x1

.field public static final START_RECORDING_DELAY_EORROR:I = 0x3e8

.field public static final START_RECORDING_DELAY_OK:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TrainingManager"


# instance fields
.field private callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

.field private context:Landroid/content/Context;

.field private keyphrase:Ljava/lang/String;

.field private loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

.field private final lock:Ljava/lang/Object;

.field private mCreateSmTask:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

.field private mHandler:Landroid/os/Handler;

.field private mIsTraining:Z

.field private mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

.field private mRecordingTimes:I

.field private mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

.field private mVerifyRecordingTask:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

.field private pdk:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private trainFinished:Z

.field private wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/zte/wakeup/training/IWakeupAction;Lcom/zte/wakeup/training/TrainingManager$Callback;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    .line 34
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->trainFinished:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->pdk:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->lock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/zte/wakeup/training/TrainingManager$1;

    invoke-direct {v1, p0}, Lcom/zte/wakeup/training/TrainingManager$1;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->context:Landroid/content/Context;

    .line 48
    iput-boolean p2, p0, Lcom/zte/wakeup/training/TrainingManager;->pdk:Z

    .line 49
    iput-object p3, p0, Lcom/zte/wakeup/training/TrainingManager;->keyphrase:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/zte/wakeup/training/TrainingManager;->wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;

    .line 51
    iput-object p5, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    .line 52
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->bindTranService()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->onReceivedStopTrainingRecordingMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->startRecording()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->onTrainOk()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/wakeup/training/TrainingManager;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingTimes:I

    return p0
.end method

.method static synthetic access$200(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;)Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->createLoadAssetsTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/wakeup/training/TrainingManager;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/wakeup/training/TrainingManager;)Lcom/zte/wakeup/training/TrainingManager$Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/wakeup/training/TrainingManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->setTrainingRecordingParams()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/wakeup/training/TrainingManager;ZILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/wakeup/training/TrainingManager;->onVerifyFinish(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/wakeup/training/TrainingManager;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bindTranService()V
    .locals 4

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;

    invoke-interface {v2}, Lcom/zte/wakeup/training/IWakeupAction;->getWakeupPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.zte.voiceassist.wakeup.controller.training.TrainerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/zte/wakeup/training/TrainingManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/zte/wakeup/training/TrainingManager$2;

    invoke-direct {v2, p0}, Lcom/zte/wakeup/training/TrainingManager$2;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    iput-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 p0, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private cancelLoadTask()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    :cond_0
    return-void
.end method

.method private createLoadAssetsTask()V
    .locals 2

    .line 425
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->cancelLoadTask()V

    .line 426
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;-><init>(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/wakeup/training/TrainingManager$1;)V

    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    .line 429
    :cond_0
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->loadAssetsTask:Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/zte/wakeup/training/TrainingManager$LoadAssetsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onReceivedStopTrainingRecordingMsg()V
    .locals 2

    .line 384
    new-instance v0, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;-><init>(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/wakeup/training/TrainingManager$1;)V

    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mVerifyRecordingTask:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    const/4 p0, 0x0

    .line 385
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onTrainOk()V
    .locals 2

    .line 347
    const-string v0, "onTrainOk onWakeupSwitchOn"

    const-string v1, "TrainingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->trainFinished:Z

    .line 349
    iget-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->pdk:Z

    if-nez v0, :cond_0

    .line 350
    const-string v0, "onTrainOk custom_wakeup_word_open"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;

    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->keyphrase:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/zte/wakeup/training/IWakeupAction;->setCustomWakeupWord(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;

    invoke-interface {p0}, Lcom/zte/wakeup/training/IWakeupAction;->setCustomWakeupWordOff()V

    :goto_0
    return-void
.end method

.method private onVerifyFinish(ZILjava/lang/String;)V
    .locals 4

    .line 224
    const-string v0, "onVerifyFinish"

    const-string v1, "TrainingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    invoke-virtual {v0, p1}, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->updateRecordingResult(Z)V

    .line 227
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    invoke-virtual {v0}, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->getCurrentProgress()I

    move-result v0

    if-eqz p1, :cond_0

    .line 229
    iget-object p2, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onRecordItemVerifySuccess(Ljava/lang/Integer;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, v3, p2, p3}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onRecordItemVerifyFailed(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object p2, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    invoke-virtual {p2}, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->isFinished()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 235
    iput-boolean v2, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    .line 237
    const-string p1, "onRecordFinish"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onRecordItemFinish(Ljava/lang/Integer;Z)V

    .line 239
    new-instance p1, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    invoke-direct {p1, p0, p3}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;-><init>(Lcom/zte/wakeup/training/TrainingManager;Lcom/zte/wakeup/training/TrainingManager$1;)V

    iput-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->mCreateSmTask:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    .line 240
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 242
    :cond_1
    iget-object p2, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onRecordItemFinish(Ljava/lang/Integer;Z)V

    const/16 p1, 0x12c

    goto :goto_1

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-interface {p1, p3, v2}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onRecordItemFinish(Ljava/lang/Integer;Z)V

    const/16 p1, 0x3e8

    .line 251
    :goto_1
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    int-to-long p1, p1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private reset()V
    .locals 2

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->resetRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 179
    :cond_0
    :goto_0
    new-instance v0, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    invoke-direct {v0, p0}, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    iput-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    .line 180
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private setTrainingRecordingParams()V
    .locals 4

    .line 401
    const-string v0, "TrainingManager"

    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->updateRecordingTimes()V

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/zte/wakeup/training/TrainingManager;->wakeupAction:Lcom/zte/wakeup/training/IWakeupAction;

    invoke-interface {v1}, Lcom/zte/wakeup/training/IWakeupAction;->isSupportCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    iget-boolean v2, p0, Lcom/zte/wakeup/training/TrainingManager;->pdk:Z

    iget-object v3, p0, Lcom/zte/wakeup/training/TrainingManager;->keyphrase:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->setTrainingRecordingParamsNew(ZLjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    invoke-interface {v1}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->setTrainingRecordingParams()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 412
    const-string v2, "mExtendedSmMgr.getUimSoundModel null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-interface {p0, v1}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onInitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 419
    const-string v1, "setTrainingRecordingParams Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 417
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private startRecording()V
    .locals 4

    .line 185
    const-string v0, "startRecording: enter"

    const-string v1, "TrainingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    if-eqz v2, :cond_0

    .line 189
    new-instance v3, Lcom/zte/wakeup/training/TrainingManager$3;

    invoke-direct {v3, p0}, Lcom/zte/wakeup/training/TrainingManager$3;-><init>(Lcom/zte/wakeup/training/TrainingManager;)V

    invoke-interface {v2, v3}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->startRecording(Lcom/zte/voiceassist/wakeup/aidl/IRecordListener;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 200
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startRecording: start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-interface {v0}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onStartRecordingSuccess()V

    .line 205
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->startRecordingTimer()V

    goto :goto_1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-interface {v0}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onStartRecordingFailed()V

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    :goto_1
    return-void
.end method

.method private startRecordingTimer()V
    .locals 3

    .line 213
    const-string v0, "TrainingManager"

    const-string v1, "startRecordingTimer: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->stopRecordingTimer()V

    .line 215
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopRecordingTimer()V
    .locals 2

    .line 219
    const-string v0, "TrainingManager"

    const-string v1, "stopRecordingTimer: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private unbindTranService()V
    .locals 1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateRecordingTimes()V
    .locals 2

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mService:Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/zte/voiceassist/wakeup/aidl/IVoiceTrainInterface;->getRecordTimes()I

    move-result v0

    iput v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingTimes:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 397
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateRecordingTimes mRecordingTimes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingTimes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrainingManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentProgress()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingCounter:Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/wakeup/training/TrainingManager$RecordingCounter;->getCurrentProgress()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRecordingTimes()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mRecordingTimes:I

    return p0
.end method

.method public isTrainFinished()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/zte/wakeup/training/TrainingManager;->trainFinished:Z

    return p0
.end method

.method public release()V
    .locals 3

    .line 154
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->cancelLoadTask()V

    .line 155
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->unbindTranService()V

    .line 157
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->stopRecordingTimer()V

    .line 158
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mCreateSmTask:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mCreateSmTask:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    invoke-virtual {v0, v1}, Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;->cancel(Z)Z

    .line 160
    iput-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->mCreateSmTask:Lcom/zte/wakeup/training/TrainingManager$CreateSmTask;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mVerifyRecordingTask:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mVerifyRecordingTask:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    invoke-virtual {v0, v1}, Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;->cancel(Z)Z

    .line 164
    iput-object v2, p0, Lcom/zte/wakeup/training/TrainingManager;->mVerifyRecordingTask:Lcom/zte/wakeup/training/TrainingManager$VerifyRecordingTask;

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/zte/wakeup/training/TrainingManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public startTraining()V
    .locals 2

    .line 137
    const-string v0, "TrainingManager"

    const-string v1, "startTraining: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    .line 139
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->reset()V

    .line 140
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->startRecording()V

    return-void
.end method

.method public stopTraining()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/zte/wakeup/training/TrainingManager;->mIsTraining:Z

    .line 147
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->reset()V

    .line 148
    iget-object v0, p0, Lcom/zte/wakeup/training/TrainingManager;->callback:Lcom/zte/wakeup/training/TrainingManager$Callback;

    invoke-interface {v0}, Lcom/zte/wakeup/training/TrainingManager$Callback;->onStartRecordingFailed()V

    .line 149
    invoke-direct {p0}, Lcom/zte/wakeup/training/TrainingManager;->stopRecordingTimer()V

    :cond_0
    return-void
.end method
