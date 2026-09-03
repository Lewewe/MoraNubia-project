.class Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;
.super Landroid/os/Handler;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/util/RecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field private audioFormat:I

.field private channelConfig:I

.field private customBufferSize:I

.field private sampleRate:I

.field private source:I

.field final synthetic this$0:Lcom/zte/aivoice/asr/util/RecordManager;

.field private volumeDB:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/zte/aivoice/asr/util/RecordManager;Landroid/os/Looper;)V
    .locals 0
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

    .line 149
    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 147
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result p1

    neg-int p1, p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->volumeDB:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;)I
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->getVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;I)I
    .locals 0

    .line 141
    iput p1, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->customBufferSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->volumeDB:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private getVolume()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->volumeDB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private processWriteOperation(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V
    .locals 10

    .line 267
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->getBufferSizeInStep()I

    move-result v5

    .line 268
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager;->access$402(Lcom/zte/aivoice/asr/util/RecordManager;Z)Z

    .line 269
    iget-object v7, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;-><init>(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v7, v8}, Lcom/zte/aivoice/asr/util/RecordManager;->access$502(Lcom/zte/aivoice/asr/util/RecordManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 364
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$500(Lcom/zte/aivoice/asr/util/RecordManager;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getAudioRecord()Landroid/media/AudioRecord;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBufferSize()I
    .locals 2

    .line 370
    iget p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->customBufferSize:I

    if-gtz p0, :cond_0

    const/16 p0, 0x10

    const/4 v0, 0x2

    const/16 v1, 0x3e80

    .line 371
    invoke-static {v1, p0, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method public getBufferSizeInStep()I
    .locals 6

    .line 226
    iget v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->audioFormat:I

    const-string v1, "[RecordManager]"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "unkown audioFormat : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->audioFormat:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 241
    :cond_2
    :goto_1
    iget v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->channelConfig:I

    const/16 v5, 0xc

    if-eq v0, v5, :cond_3

    const/16 v3, 0x10

    if-eq v0, v3, :cond_4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unkown channelConfig : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->channelConfig:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v2, v3

    .line 255
    :cond_4
    :goto_2
    iget v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->customBufferSize:I

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    mul-int/2addr v4, v2

    .line 258
    iget p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->sampleRate:I

    mul-int/lit8 p0, p0, 0x28

    mul-int/2addr v4, p0

    div-int/lit16 v0, v4, 0x3e8

    .line 260
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getBufferSizeInStep for step:40 is "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_2

    .line 157
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 160
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 161
    aget-object v2, p1, v0

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x2

    .line 163
    aget-object p1, p1, v2

    instance-of v2, p1, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_3

    .line 164
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->startRecord(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    goto :goto_2

    .line 165
    :cond_3
    instance-of v2, p1, Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;

    if-eqz v2, :cond_5

    .line 166
    check-cast p1, Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;

    invoke-virtual {p0, v0, v1, v4, p1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->startRecord(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->stopRecord()V

    :cond_5
    :goto_2
    return-void
.end method

.method public initDefaultFormat()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->getBufferSize()I

    move-result v0

    const/16 v1, 0x3e80

    invoke-virtual {p0, v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->initFormat(II)V

    return-void
.end method

.method public initFormat(II)V
    .locals 6

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move v5, p1

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->initFormatCallBD(IIIII)V

    return-void
.end method

.method public initFormatCallBD(IIIII)V
    .locals 7

    .line 216
    iput p1, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->source:I

    .line 217
    iput p2, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->sampleRate:I

    .line 218
    iput p3, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->channelConfig:I

    .line 219
    iput p4, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->audioFormat:I

    .line 220
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    new-instance v6, Landroid/media/AudioRecord;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-static {p0, v6}, Lcom/zte/aivoice/asr/util/RecordManager;->access$302(Lcom/zte/aivoice/asr/util/RecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    return-void
.end method

.method public isRecording()Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->stopRecord()V

    .line 178
    const-string v0, "[RecordManager]"

    const-string v1, "start record"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$200(Lcom/zte/aivoice/asr/util/RecordManager;)Lcom/zte/aivoice/asr/util/BluetoothScoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->openSco()V

    .line 182
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->initDefaultFormat()V

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->processWriteOperation(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    :cond_2
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 193
    const-string v0, "[RecordManager]"

    const-string v1, "stop record"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager;->access$402(Lcom/zte/aivoice/asr/util/RecordManager;Z)Z

    .line 195
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->volumeDB:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 196
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$500(Lcom/zte/aivoice/asr/util/RecordManager;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$500(Lcom/zte/aivoice/asr/util/RecordManager;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 198
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager;->access$502(Lcom/zte/aivoice/asr/util/RecordManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 203
    :cond_1
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->access$200(Lcom/zte/aivoice/asr/util/RecordManager;)Lcom/zte/aivoice/asr/util/BluetoothScoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->closeSco()V

    return-void
.end method
