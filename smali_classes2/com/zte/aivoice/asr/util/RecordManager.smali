.class public Lcom/zte/aivoice/asr/util/RecordManager;
.super Ljava/lang/Object;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;,
        Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;
    }
.end annotation


# static fields
.field public static final AUDIO_SLICE_MS:I = 0x28

.field private static final MSG_RECORD:I = 0x0

.field public static final RECORD_AUDIO_FORMAT:I = 0x2

.field public static final RECORD_CHANNEL_CONFIG:I = 0x10

.field public static final RECORD_SAMPLE_RATE:I = 0x3e80

.field public static final RECORD_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RecordManager]"

.field private static final VOLUME_DB_MAX:I = 0x3c

.field private static final VOLUME_DB_MIN:I

.field private static sInstance:Lcom/zte/aivoice/asr/util/RecordManager;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mBluetoothScoManager:Lcom/zte/aivoice/asr/util/BluetoothScoManager;

.field private readThread:Ljava/lang/Thread;

.field private running:Z

.field private workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

.field private workThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/aivoice/asr/util/RecordManager;)Lcom/zte/aivoice/asr/util/BluetoothScoManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->mBluetoothScoManager:Lcom/zte/aivoice/asr/util/BluetoothScoManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zte/aivoice/asr/util/RecordManager;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/aivoice/asr/util/RecordManager;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->running:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zte/aivoice/asr/util/RecordManager;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->running:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/aivoice/asr/util/RecordManager;)Ljava/lang/Thread;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->readThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/zte/aivoice/asr/util/RecordManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->readThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private createRecordMessage(Z)Landroid/os/Message;
    .locals 1

    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/os/Message;->what:I

    .line 137
    iput p1, p0, Landroid/os/Message;->arg1:I

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/zte/aivoice/asr/util/RecordManager;
    .locals 2

    const-class v0, Lcom/zte/aivoice/asr/util/RecordManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/zte/aivoice/asr/util/RecordManager;->sInstance:Lcom/zte/aivoice/asr/util/RecordManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-direct {v1}, Lcom/zte/aivoice/asr/util/RecordManager;-><init>()V

    sput-object v1, Lcom/zte/aivoice/asr/util/RecordManager;->sInstance:Lcom/zte/aivoice/asr/util/RecordManager;

    .line 55
    :cond_0
    sget-object v1, Lcom/zte/aivoice/asr/util/RecordManager;->sInstance:Lcom/zte/aivoice/asr/util/RecordManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBufferSize()I
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->getBufferSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVolume()I
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v0

    .line 100
    iget-boolean v1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->running:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v2

    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    invoke-static {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->access$000(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;)I

    move-result p0

    add-int/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getMaxVolume()I
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method

.method public getMinVolume()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;

    invoke-direct {v0, p1}, Lcom/zte/aivoice/asr/util/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->mBluetoothScoManager:Lcom/zte/aivoice/asr/util/BluetoothScoManager;

    .line 66
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "record thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workThread:Landroid/os/HandlerThread;

    .line 67
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance p1, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;-><init>(Lcom/zte/aivoice/asr/util/RecordManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    return-void
.end method

.method public release()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager;->stopRecord()V

    .line 92
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    if-eqz p0, :cond_0

    .line 123
    invoke-static {p0, p1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->access$102(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;I)I

    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/zte/aivoice/asr/util/RecordManager;->createRecordMessage(Z)Landroid/os/Message;

    move-result-object v0

    .line 74
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lcom/zte/aivoice/asr/util/RecordManager;->createRecordMessage(Z)Landroid/os/Message;

    move-result-object v0

    .line 81
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->removeMessages(I)V

    .line 87
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/RecordManager;->workHandler:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->stopRecord()V

    return-void
.end method
