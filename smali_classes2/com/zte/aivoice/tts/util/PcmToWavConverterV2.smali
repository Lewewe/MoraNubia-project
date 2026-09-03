.class public Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;
.super Ljava/lang/Object;
.source "PcmToWavConverterV2.java"


# static fields
.field private static sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private amplifyPcmVolume([BF)[B
    .locals 6

    .line 87
    array-length p0, p1

    .line 88
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 93
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const v4, 0x46fffe00    # 32767.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_0
    const/high16 v4, -0x39000000    # -32768.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    float-to-int v2, v2

    int-to-short v2, v2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 107
    aput-byte v4, v0, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 108
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private convertPcmToWavWithGain([BLjava/io/File;IIIF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p6}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->amplifyPcmVolume([BF)[B

    move-result-object p0

    .line 53
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    :try_start_0
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    array-length p6, p0

    add-int/lit8 p6, p6, 0x24

    int-to-long v0, p6

    mul-int p6, p3, p4

    mul-int/2addr p6, p5

    .line 58
    div-int/lit8 p6, p6, 0x8

    int-to-long v2, p6

    .line 61
    const-string p6, "RIFF"

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    long-to-int p6, v0

    .line 62
    invoke-static {p6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p6

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    const-string p6, "WAVE"

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 64
    const-string p6, "fmt "

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/16 p6, 0x10

    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p6

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p6, 0x1

    .line 66
    invoke-static {p6}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p6

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-short p6, p4

    .line 67
    invoke-static {p6}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p6

    invoke-virtual {p2, p6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int p3, v2

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    mul-int/2addr p4, p5

    .line 70
    div-int/lit8 p4, p4, 0x8

    int-to-short p3, p4

    invoke-static {p3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-short p3, p5

    .line 71
    invoke-static {p3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    const-string p3, "data"

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 73
    array-length p3, p0

    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 53
    :try_start_3
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static getInstance()Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;
    .locals 2

    .line 12
    const-class v0, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    invoke-direct {v1}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;-><init>()V

    sput-object v1, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object v0, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;

    return-object v0

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public pcmToWav([BLjava/io/File;FI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v6, p3

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/zte/aivoice/tts/util/PcmToWavConverterV2;->convertPcmToWavWithGain([BLjava/io/File;IIIF)V

    return-void
.end method
