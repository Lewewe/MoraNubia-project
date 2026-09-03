.class Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;
.super Ljava/lang/Object;
.source "RecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->processWriteOperation(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

.field final synthetic val$bufferSizeRecord:I

.field final synthetic val$fromRecordFile:Ljava/lang/String;

.field final synthetic val$recordListener:Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;

.field final synthetic val$toRecordFile:Ljava/lang/String;

.field final synthetic val$writeEnd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->this$1:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    iput-object p2, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$fromRecordFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$toRecordFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$writeEnd:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$bufferSizeRecord:I

    iput-object p6, p0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$recordListener:Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToShort([B)[S
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_0
    array-length p0, p1

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [S

    .line 360
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 277
    :try_start_0
    iget-object v2, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$fromRecordFile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$fromRecordFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 280
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$toRecordFile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    new-instance v3, Lcom/zte/aivoice/asr/util/PcmWriter;

    iget-object v4, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$toRecordFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/zte/aivoice/asr/util/PcmWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 283
    :goto_1
    :try_start_2
    iget-object v4, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$writeEnd:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 284
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$writeEnd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    :cond_2
    move v4, v5

    .line 286
    :cond_3
    :goto_2
    iget-object v6, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->this$1:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    iget-object v6, v6, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v6}, Lcom/zte/aivoice/asr/util/RecordManager;->access$400(Lcom/zte/aivoice/asr/util/RecordManager;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 287
    iget v6, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$bufferSizeRecord:I

    new-array v7, v6, [B

    if-eqz v2, :cond_6

    const-wide/16 v8, 0xc8

    .line 292
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 293
    invoke-virtual {v2, v7, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_4

    const/4 v9, 0x5

    if-ge v4, v9, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v5

    :cond_5
    move v6, v8

    goto :goto_3

    .line 305
    :cond_6
    iget-object v8, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->this$1:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    iget-object v8, v8, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->this$0:Lcom/zte/aivoice/asr/util/RecordManager;

    invoke-static {v8}, Lcom/zte/aivoice/asr/util/RecordManager;->access$300(Lcom/zte/aivoice/asr/util/RecordManager;)Landroid/media/AudioRecord;

    move-result-object v8

    invoke-virtual {v8, v7, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    :goto_3
    if-lez v6, :cond_3

    .line 308
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    if-eqz v3, :cond_7

    .line 311
    invoke-virtual {v3, v8}, Lcom/zte/aivoice/asr/util/PcmWriter;->start([B)V

    .line 313
    :cond_7
    iget-object v9, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->val$recordListener:Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;

    if-eqz v9, :cond_8

    .line 315
    invoke-interface {v9, v8}, Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;->onBufferUpdate([B)V

    .line 318
    :cond_8
    invoke-direct {v0, v7}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->bytesToShort([B)[S

    move-result-object v8

    .line 320
    array-length v9, v8

    const-wide/16 v10, 0x0

    move v12, v5

    :goto_4
    if-ge v12, v9, :cond_9

    aget-short v13, v8, v12

    int-to-double v13, v13

    const-wide/high16 v15, 0x40e0000000000000L    # 32768.0

    div-double/2addr v13, v15

    mul-double/2addr v13, v13

    add-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    int-to-double v8, v6

    div-double/2addr v10, v8

    .line 324
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 325
    iget-object v6, v0, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler$1;->this$1:Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;

    invoke-static {v6}, Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;->access$600(Lcom/zte/aivoice/asr/util/RecordManager$WorkHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    .line 337
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 340
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    .line 344
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_6
    if-eqz v3, :cond_12

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_7

    :catch_2
    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catch_3
    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_7
    if-eqz v1, :cond_d

    .line 337
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    .line 344
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_9
    if-eqz v3, :cond_f

    .line 350
    invoke-virtual {v3}, Lcom/zte/aivoice/asr/util/PcmWriter;->stop()V

    .line 352
    :cond_f
    throw v4

    :catch_6
    move-object v2, v1

    move-object v3, v2

    :goto_a
    if-eqz v1, :cond_10

    .line 337
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_b
    if-eqz v2, :cond_11

    .line 344
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_c
    if-eqz v3, :cond_12

    .line 350
    :goto_d
    invoke-virtual {v3}, Lcom/zte/aivoice/asr/util/PcmWriter;->stop()V

    :cond_12
    return-void
.end method
