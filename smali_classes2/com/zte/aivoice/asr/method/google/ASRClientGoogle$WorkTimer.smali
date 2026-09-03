.class Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;
.super Lcn/nubia/redmagickyi/util/ZTETimer;
.source "ASRClientGoogle.java"

# interfaces
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;
    }
.end annotation


# static fields
.field private static final STATE_DESTROYED:I = 0x2

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_RECOGNIZING:I = 0x1


# instance fields
.field private asr:Lcom/zte/aimodel/asr/IASRActor;

.field private context:Landroid/content/Context;

.field private isCanceled:Z

.field private serial:Ljava/util/concurrent/atomic/AtomicLong;

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private stringBuffer:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

.field private workRunnable:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    .line 140
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 142
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->stringBuffer:Ljava/lang/StringBuffer;

    .line 143
    new-instance p1, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;)Lcom/zte/aimodel/asr/IASRActor;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->asr:Lcom/zte/aimodel/asr/IASRActor;

    return-object p0
.end method

.method static synthetic access$702(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;Lcom/zte/aimodel/asr/IASRActor;)Lcom/zte/aimodel/asr/IASRActor;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->asr:Lcom/zte/aimodel/asr/IASRActor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->isCanceled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;)Landroid/content/Context;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->isCanceled:Z

    .line 156
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;->access$400(Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;)V

    .line 157
    invoke-super {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    return-void
.end method

.method public onRecognizeBegin()V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recognize begin, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 337
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 338
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecognizeBegin()V

    :cond_0
    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recognize completed, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->removeTrailingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecognizeCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->removeTrailingPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecognizeCompleted(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 4

    const-string v0, "Recognize failed end, state:"

    const-string v1, "Recognize failed, state:"

    monitor-enter p0

    .line 368
    :try_start_0
    const-string v2, "ASRClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aivoice/code/ErrorCode;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    .line 371
    const-class v1, Lcom/zte/aivoice/asr/util/RecordManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :try_start_1
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aivoice/asr/util/RecordManager;->stopRecord()V

    .line 373
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 376
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    invoke-virtual {v1, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 373
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 380
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 381
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    invoke-virtual {v1, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 384
    :cond_1
    :goto_0
    const-string v1, "ASRClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/code/ErrorCode;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecordingCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle;->onRecordingVolumeUpdated(III)V

    :cond_0
    return-void
.end method

.method public removeTrailingPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 359
    const-string p0, "[\\p{Punct}\\s]+$"

    .line 361
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 363
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startRecognize(Landroid/content/Context;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 148
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->context:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->onRecognizeBegin()V

    .line 150
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->workRunnable:Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer$WorkRunnable;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogle$WorkTimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
