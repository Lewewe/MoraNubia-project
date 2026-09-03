.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "TTSClientBytedance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

.field private ttsCallback:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->deinit()V

    return-void
.end method

.method private deinit()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "Client deinit begin"

    const-string v1, "TTSClient-B"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object v2, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 440
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    .line 441
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$802(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 442
    new-instance v2, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v3, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;

    invoke-direct {v3, p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;Lcom/zte/aimodel/tts/ITTSActor;)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 452
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 453
    const-string p0, "Client deinit end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init(JI)Z
    .locals 4

    .line 402
    new-instance v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;JI)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->ttsCallback:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;

    .line 403
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const-string v0, "TTSClient-B"

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 404
    const-string p1, "Client init begin"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    const-string v2, "bytedanceStream"

    const-string v3, "cn.nubia.redmagickyi"

    invoke-static {v2, v3}, Lcom/zte/aimodel/ModelManager;->pickITTSActor(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$802(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 409
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p1

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->ttsCallback:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;

    invoke-interface {p1, v2}, Lcom/zte/aimodel/tts/ITTSActor;->registerCallback(Lcom/zte/aimodel/tts/ITTSCallback;)V

    .line 410
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p1

    const-string v2, "zh-CN"

    const-string v3, "ICL_zh_female_huoponvhai_tob"

    invoke-interface {p1, v2, v3}, Lcom/zte/aimodel/tts/ITTSActor;->init(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    const-string p1, "Client init end"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    const-string v1, "Client init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$802(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 418
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    .line 422
    :cond_1
    const-string p1, "Client already exist, not need to init"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :try_start_1
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object p1

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->ttsCallback:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable$TTSCallbackImpl;

    invoke-interface {p1, v2}, Lcom/zte/aimodel/tts/ITTSActor;->registerCallback(Lcom/zte/aimodel/tts/ITTSCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move p2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 426
    const-string v1, "Client registerCallback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {p1, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$802(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;Lcom/zte/aimodel/tts/ITTSActor;)Lcom/zte/aimodel/tts/ITTSActor;

    .line 429
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :goto_1
    return p2
.end method


# virtual methods
.method public onAudioResultReceived(IILcom/zte/aimodel/tts/TTSResult;)V
    .locals 5

    .line 341
    const-string v0, "TTSClient-B"

    .line 0
    const-string v1, "onAudioResultReceived, serial: "

    .line 341
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 343
    iget-object p3, p3, Lcom/zte/aimodel/tts/TTSResult;->byteArrayList:Ljava/util/List;

    .line 344
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioResultReceived Received data.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    new-instance v4, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;

    invoke-direct {v4, p1, v2}, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;-><init>(I[B)V

    invoke-virtual {v3, v4, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisCompleted(Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;Z)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisCompleted(Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 351
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

    .line 352
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :goto_1
    return-void
.end method

.method public onCancelResultReceived(I)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelResultReceived ErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTSClient-B"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->init(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Lcom/zte/aimodel/tts/ITTSActor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/aimodel/tts/ITTSActor;->textToSpeech(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedance$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_0
    :goto_0
    return-void
.end method
