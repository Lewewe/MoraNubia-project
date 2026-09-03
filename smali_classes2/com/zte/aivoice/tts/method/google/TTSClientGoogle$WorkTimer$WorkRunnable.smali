.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "TTSClientGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->deinit()V

    return-void
.end method

.method private deinit()V
    .locals 4

    .line 523
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$1200(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Client deinit begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object v2, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 527
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    .line 528
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$702(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 529
    new-instance v2, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v3, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$2;

    invoke-direct {v3, p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;Lcom/zte/aimodel/tts/ITTSActor;)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 539
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "Client deinit end"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init()Z
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Client init failed"

    const-string v4, "TTSClient-G"

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Client init begin"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_0
    new-instance v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;)V

    .line 451
    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    const-string v7, "google_tts"

    const-string v8, "cn.nubia.redmagickyi"

    invoke-static {v7, v8}, Lcom/zte/aimodel/ModelManager;->pickITTSActor(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$702(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 454
    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/zte/aimodel/tts/ITTSActor;->registerCallback(Lcom/zte/aimodel/tts/ITTSCallback;)V

    .line 455
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->initSpeaker()V

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Client init end"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$702(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 463
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Client already exist, not need to init"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    :try_start_1
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/tts/ITTSActor;->deinit()V

    .line 471
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->initSpeaker()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$702(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 476
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v5

    :goto_1
    return v1
.end method

.method private initSpeaker()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$1100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "en-US "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en-US-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 511
    :pswitch_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmn-CN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmn-CN-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :pswitch_1
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ja-JP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja-JP-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :pswitch_2
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "it-IT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it-IT-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 500
    :pswitch_3
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fr-FR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr-FR-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :pswitch_4
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "es-US "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es-US-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :pswitch_5
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "es-ES "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es-ES-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_6
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "de-DE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de-DE-Chirp3-HD-Leda"

    invoke-interface {p0, v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private replaceConsecutiveCommas(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_5

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_3

    .line 368
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 375
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 376
    aget-char v5, p1, v2

    const/16 v6, 0x3002

    const v7, 0xff0c

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    const v8, 0xff01

    if-eq v5, v8, :cond_2

    const v8, 0xff1f

    if-eq v5, v8, :cond_2

    const v8, 0xff1b

    if-eq v5, v8, :cond_2

    const v8, 0xff1a

    if-ne v5, v8, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    if-ne v5, v7, :cond_3

    if-ltz v3, :cond_3

    if-ne v4, v7, :cond_3

    .line 383
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v0

    move v4, v1

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    move v4, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    return-object p1
.end method


# virtual methods
.method public onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V
    .locals 8

    .line 405
    const-string v0, "TTSClient-G"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onAudioResultReceived, serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    if-eqz p3, :cond_0

    .line 408
    iget-object p3, p3, Lcom/zte/aimodel/tts/TTSResult;->byteArrayList:Ljava/util/List;

    .line 409
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 410
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    array-length v6, v5

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v7}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "onAudioResultReceived Received data.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-virtual {v6, v5, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisCompleted([BZ)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p2, p3, :cond_1

    .line 416
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-virtual {p1, v6, v5}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisCompleted([BZ)V

    goto :goto_1

    .line 419
    :cond_1
    iget-object p2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    cmp-long p3, v3, v1

    if-lez p3, :cond_2

    const-wide/16 v1, 0x1e

    cmp-long p3, v3, v1

    if-gtz p3, :cond_2

    move p1, v5

    :cond_2
    invoke-virtual {p2, v6, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisCompleted([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "onAudioResultReceived ErrorCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :goto_1
    return-void
.end method

.method public onCancelResultReceived(I)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onCancelResultReceived ErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTSClient-G"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 431
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 344
    const-string v0, ","

    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->init()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "TTSClient-G"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "begin text to speech"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->replaceConsecutiveCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uff5e"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/aimodel/tts/ITTSActor;->textToSpeech(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogle$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_0
    :goto_0
    return-void
.end method
