.class public Lcom/zte/aivoice/tts/util/PcmToWavConverter;
.super Ljava/lang/Object;
.source "PcmToWavConverter.java"


# static fields
.field private static final CHANNELS:Ljava/lang/Integer;

.field private static final SIMPLE_RATE:I = 0x5dc0

.field private static sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->CHANNELS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHeader([B[B)[B
    .locals 3

    .line 43
    array-length v0, p0

    const/16 v1, 0x2c

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 44
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length p1, p0

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private buildHeader(Ljava/lang/Integer;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    .line 51
    :try_start_0
    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 53
    new-array v2, v1, [C

    fill-array-data v2, :array_1

    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 54
    new-array v2, v1, [C

    fill-array-data v2, :array_2

    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeChar(Ljava/io/ByteArrayOutputStream;[C)V

    const/16 v2, 0x10

    .line 55
    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, v0, v3}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 57
    sget-object v3, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->CHANNELS:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v4, 0x5dc0

    .line 58
    invoke-direct {p0, v0, v4}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    mul-int/2addr v5, v4

    invoke-direct {p0, v0, v5}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 60
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-direct {p0, v0, v3}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 61
    invoke-direct {p0, v0, v2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 62
    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-direct {p0, v0, v1}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method public static getInstance()Lcom/zte/aivoice/tts/util/PcmToWavConverter;
    .locals 2

    .line 19
    const-class v0, Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    invoke-direct {v1}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;-><init>()V

    sput-object v1, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    .line 23
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v0, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->sInstance:Lcom/zte/aivoice/tts/util/PcmToWavConverter;

    return-object v0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeChar(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    .line 85
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-char v1, p2, v0

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x4

    .line 76
    new-array p0, p0, [B

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 77
    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x8

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 78
    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 79
    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    .line 80
    aput-byte p2, p0, v0

    .line 81
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private writeShort(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x2

    .line 69
    new-array p0, p0, [B

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 70
    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    .line 71
    aput-byte p2, p0, v0

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public pcmToWav(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 30
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 33
    invoke-virtual {p0, v0, p2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->pcmToWav([BLjava/io/File;)V

    return-void

    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public pcmToWav([BLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 38
    :try_start_0
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->buildHeader(Ljava/lang/Integer;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zte/aivoice/tts/util/PcmToWavConverter;->addHeader([B[B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
