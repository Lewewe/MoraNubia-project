.class Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "ASRClientMicrosoft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;
    }
.end annotation


# instance fields
.field private asrCallback:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;

.field final synthetic this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->deinit()V

    return-void
.end method

.method private deinit()V
    .locals 3

    .line 304
    const-class v0, Lcom/zte/aivoice/asr/util/RecordManager;

    monitor-enter v0

    .line 305
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->stopRecord()V

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "ASRClient"

    const-string v1, "Client deinit begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 310
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$702(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;Lcom/zte/aimodel/asr/IASRActor;)Lcom/zte/aimodel/asr/IASRActor;

    .line 312
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;Lcom/zte/aimodel/asr/IASRActor;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 323
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$900(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 324
    const-string p0, "ASRClient"

    const-string v0, "Client deinit end"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 306
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(J)Z
    .locals 5

    .line 265
    new-instance v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;J)V

    iput-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;

    .line 266
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "ASRClient"

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 267
    const-string p1, "Client init begin"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$900(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    const-string v3, "microsoft"

    const-string v4, "cn.nubia.redmagickyi"

    invoke-static {v3, v4}, Lcom/zte/aimodel/ModelManager;->pickIASRActor(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$702(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;Lcom/zte/aimodel/asr/IASRActor;)Lcom/zte/aimodel/asr/IASRActor;

    .line 272
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object p1

    iget-object v3, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;

    invoke-interface {p1, v3}, Lcom/zte/aimodel/asr/IASRActor;->registerCallback(Lcom/zte/aimodel/asr/IASRCallback;)V

    .line 273
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 274
    const-string v3, "Microsoft_InitialSilenceTimeoutMs"

    const/16 v4, 0x1770

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string v3, "Microsoft_SegmentationSilenceTimeoutMs"

    const/16 v4, 0x7d0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    iget-object v3, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lcom/zte/aimodel/asr/IASRActor;->setPropBeforeInit(ILandroid/os/Bundle;)V

    .line 277
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object p1

    const-string v3, "zh-CN"

    invoke-interface {p1, v3}, Lcom/zte/aimodel/asr/IASRActor;->init(Ljava/lang/String;)I

    .line 280
    :cond_0
    const-string p1, "Client init end"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    const-string v2, "Client init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$702(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;Lcom/zte/aimodel/asr/IASRActor;)Lcom/zte/aimodel/asr/IASRActor;

    .line 285
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    .line 289
    :cond_1
    const-string p1, "Client already exist, not need to init"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_1
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object p1

    iget-object v3, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$ASRCallbackImpl;

    invoke-interface {p1, v3}, Lcom/zte/aimodel/asr/IASRActor;->registerCallback(Lcom/zte/aimodel/asr/IASRCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move p2, v2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 293
    const-string v2, "Client registerCallback failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {p1, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$702(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;Lcom/zte/aimodel/asr/IASRActor;)Lcom/zte/aimodel/asr/IASRActor;

    .line 296
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :goto_1
    return p2
.end method


# virtual methods
.method public onCancelResultReceived(I)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelResultReceived ErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASRClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public onTextResultReceived(ILandroid/os/Bundle;)V
    .locals 3

    .line 217
    const-string v0, "ASRClient"

    .line 0
    const-string v1, "onTextResultReceived, type: "

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", asrResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, ""

    if-eqz p2, :cond_0

    .line 221
    const-string v2, "asr"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 226
    :cond_0
    iget-object p2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v1, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onTextResultReceived ErrorCode: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v0, v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMode()Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->Recognize:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    const-wide/16 v2, 0xc8

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$600(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->init(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :cond_0
    add-int/2addr v0, v4

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/aimodel/asr/IASRActor;->getStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 174
    :try_start_2
    const-string v5, "ASRClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStream failed, retryTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v5, 0x3

    if-lt v0, v5, :cond_0

    :cond_1
    if-nez v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto/16 :goto_3

    .line 181
    :cond_2
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    iget-object v5, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v5, v5, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v5}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getRecognizeingAudioPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v6, v6, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v6}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v1}, Lcom/zte/aivoice/asr/util/RecordManager;->startRecord(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 182
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/asr/IASRActor;->startRecognize()V

    .line 183
    :catch_1
    :goto_1
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 184
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->getCurrentVolume()I

    move-result v1

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v5

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecordingVolumeUpdated(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 192
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v0, v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMode()Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->MicRecord:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    if-ne v0, v1, :cond_4

    .line 193
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v1, v1, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getRecognizeingAudioPath()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v5, v5, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v5}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$1;

    invoke-direct {v6, p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/util/RecordManager;->startRecord(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    .line 199
    :catch_2
    :goto_2
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 200
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->getCurrentVolume()I

    move-result v1

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v5

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecordingVolumeUpdated(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 208
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecordingCompleted(Ljava/lang/String;)V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;->access$500(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoft$WorkTimer;->onRecordingCompleted(Ljava/lang/String;)V

    .line 212
    throw v0
.end method
