.class Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "TTSClientMicrosoft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;)V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->deinit()V

    return-void
.end method

.method private deinit()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "Client deinit begin"

    const-string v1, "TTSClient-M"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    sget-object v2, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v2}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 372
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 374
    new-instance v2, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v3, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable$2;

    invoke-direct {v3, p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;Lcom/zte/aimodel/tts/ITTSActor;)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 384
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 385
    const-string p0, "Client deinit end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init()Z
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    const-string v1, "TTSClient-M"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 334
    const-string v0, "Client init begin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_0
    new-instance v0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;)V

    .line 347
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    const-string v4, "microsoft"

    const-string v5, "cn.nubia.redmagickyi"

    invoke-static {v4, v5}, Lcom/zte/aimodel/ModelManager;->pickITTSActor(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 350
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/zte/aimodel/tts/ITTSActor;->registerCallback(Lcom/zte/aimodel/tts/ITTSCallback;)V

    .line 351
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    const-string v3, "zh-CN"

    const-string v4, "zh-CN-XiaoyiNeural"

    invoke-interface {v0, v3, v4}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    const-string v0, "Client init end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 356
    const-string v2, "Client init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 359
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 363
    :cond_1
    const-string p0, "Client already exist, not need to init"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method


# virtual methods
.method public onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V
    .locals 4

    .line 311
    const-string v0, "TTSClient-M"

    .line 0
    const-string v1, "onAudioResultReceived, serial: "

    .line 311
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    if-eqz p3, :cond_0

    .line 313
    iget-object p3, p3, Lcom/zte/aimodel/tts/TTSResult;->byteArrayList:Ljava/util/List;

    .line 314
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioResultReceived Received data.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-virtual {v2, v1, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisCompleted([BZ)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    const/4 p1, 0x1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisCompleted([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onAudioResultReceived ErrorCode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :goto_1
    return-void
.end method

.method public onCancelResultReceived(I)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelResultReceived ErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTSClient-M"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->textToSpeech(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_0
    :goto_0
    return-void
.end method
