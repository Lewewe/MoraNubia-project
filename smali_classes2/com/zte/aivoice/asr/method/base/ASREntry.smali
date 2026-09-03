.class public Lcom/zte/aivoice/asr/method/base/ASREntry;
.super Ljava/lang/Object;
.source "ASREntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;
    }
.end annotation


# instance fields
.field private micRecordingAudioPath:Ljava/lang/String;

.field private mode:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

.field private recognizeingAudioPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMicRecordingAudioFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 75
    invoke-static {p0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p0, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    .line 81
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 80
    :try_start_3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_0
    :goto_1
    return-object v1
.end method

.method public static getMicRecordingDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "chat/asr"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static toMicRecord(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;
    .locals 2

    .line 43
    new-instance v0, Lcom/zte/aivoice/asr/method/base/ASREntry;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;-><init>()V

    .line 44
    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->MicRecord:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    iput-object v1, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->mode:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    .line 45
    iput-object p0, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->micRecordingAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public static toRecognizeByAudioFile(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;
    .locals 2

    .line 63
    new-instance v0, Lcom/zte/aivoice/asr/method/base/ASREntry;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;-><init>()V

    .line 64
    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->Recognize:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    iput-object v1, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->mode:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    .line 65
    iput-object p0, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->recognizeingAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public static toRecognizeByMicRecord(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;
    .locals 2

    .line 53
    new-instance v0, Lcom/zte/aivoice/asr/method/base/ASREntry;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;-><init>()V

    .line 54
    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->Recognize:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    iput-object v1, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->mode:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    .line 55
    iput-object p0, v0, Lcom/zte/aivoice/asr/method/base/ASREntry;->micRecordingAudioPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMicRecordingAudioPath()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/base/ASREntry;->micRecordingAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/base/ASREntry;->mode:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    return-object p0
.end method

.method public getRecognizeingAudioPath()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/base/ASREntry;->recognizeingAudioPath:Ljava/lang/String;

    return-object p0
.end method
