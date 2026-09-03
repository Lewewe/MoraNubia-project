.class Lcom/zte/aivoice/asr/util/PcmWriter;
.super Ljava/lang/Object;
.source "PcmWriter.java"


# static fields
.field private static DEFAULT_PATH:Ljava/lang/String;


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private pcmPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->pcmPath:Ljava/lang/String;

    return-void
.end method

.method private clearData()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->pcmPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->pcmPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "rw"

    invoke-direct {v0, v1, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    .line 24
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 23
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public start([B)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->pcmPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/zte/aivoice/asr/util/PcmWriter;->clearData()V

    .line 34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->pcmPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 39
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 42
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 53
    iput-object v1, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    .line 54
    throw v0

    .line 53
    :catch_0
    :goto_0
    iput-object v1, p0, Lcom/zte/aivoice/asr/util/PcmWriter;->fos:Ljava/io/FileOutputStream;

    :cond_0
    return-void
.end method
