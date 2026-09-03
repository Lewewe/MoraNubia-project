.class public Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
.super Ljava/lang/Object;
.source "DownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    }
.end annotation


# static fields
.field private static FILE_MODE:Ljava/lang/String; = "rwd"

.field public static final PERCENT_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DownLoadTask"


# instance fields
.field private appendId:Z

.field private call:Lokhttp3/Call;

.field private completedSize:J

.field private downloadDirPath:Ljava/lang/String;

.field private downloadStatus:I

.field private fileType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isProgressAppend:Z

.field private mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

.field private mClient:Lokhttp3/OkHttpClient;

.field private mDownLoadFile:Ljava/io/RandomAccessFile;

.field private mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

.field private md5sum:Ljava/lang/String;

.field private percent:I

.field private preDownloadSize:J

.field private totalSize:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    .line 57
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$000(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$100(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->url:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$200(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadDirPath:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$300(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$400(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->fileType:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$500(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    .line 63
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$600(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->appendId:Z

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$700(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isProgressAppend:Z

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->access$800(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    .line 66
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)F
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->caculateProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->readAndSave2File(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isDownloadFinish()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V

    return-void
.end method

.method private caculateProgress()F
    .locals 12

    .line 232
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isProgressAppend:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    .line 237
    iget-wide v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    iget-wide v4, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    sub-long/2addr v0, v4

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    goto :goto_0

    .line 243
    :cond_1
    iget-wide v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    iget-wide v8, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    add-long v10, v6, v8

    cmp-long v0, v10, v4

    if-gtz v0, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    mul-long/2addr v0, v2

    add-long/2addr v6, v8

    div-long/2addr v0, v6

    :goto_0
    long-to-float v1, v0

    :goto_1
    return v1
.end method

.method private cancelRequest()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->call:Lokhttp3/Call;

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method private doCancelClear()V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private error(I)V
    .locals 4

    .line 274
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x9

    .line 278
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    .line 279
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    return-void
.end method

.method private isDownloadFinish()Z
    .locals 7

    .line 254
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 255
    iget-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v6, 0x5

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/MD5Utils;->checkMd5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iput v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    goto :goto_1

    .line 260
    :cond_0
    const-string p0, "DownLoadTask"

    const-string v0, "download failed, reason : md5 mismatch"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 263
    iput v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private onCallBack()V
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->handleMessage()V

    .line 332
    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->updateDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private readAndSave2File(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    .line 168
    new-array v0, v0, [B

    const/4 v1, 0x7

    .line 171
    :try_start_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    .line 173
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isProgressAppend:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    .line 174
    iget-wide v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    iget-wide v8, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    add-long/2addr v6, v8

    div-long/2addr v4, v6

    long-to-float v4, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_5

    .line 179
    iget v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    if-eqz p1, :cond_2

    .line 217
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :catch_0
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_3

    .line 223
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-void

    :cond_4
    int-to-long v9, v5

    add-long/2addr v2, v9

    .line 184
    :try_start_3
    iget-object v6, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 186
    iput-wide v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    .line 188
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->caculateProgress()F

    move-result v5

    sub-float v6, v5, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 193
    iput v8, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    const/16 v4, 0x3e8

    float-to-int v6, v5

    .line 195
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    .line 196
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    move v4, v5

    goto :goto_0

    .line 200
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isDownloadFinish()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_7

    .line 217
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    :catch_2
    :cond_7
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_a

    .line 223
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    const/16 v0, 0x8

    .line 212
    :try_start_6
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_8

    .line 217
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 221
    :catch_4
    :cond_8
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_a

    goto :goto_2

    .line 209
    :catch_5
    :try_start_8
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_9

    .line 217
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 221
    :catch_6
    :cond_9
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_a

    goto :goto_2

    :catch_7
    :cond_a
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_b

    .line 217
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 221
    :catch_8
    :cond_b
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_c

    .line 223
    :try_start_b
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 227
    :catch_9
    :cond_c
    throw v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 291
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    if-eqz p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->doCancelClear()V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->cancelRequest()V

    .line 296
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 412
    instance-of v0, p1, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    .line 414
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 416
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBuilder()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;
    .locals 0

    .line 420
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    return-object p0
.end method

.method public getDownLoadFilePath()Ljava/lang/String;
    .locals 2

    .line 395
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->appendId:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 399
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->appendId:Z

    if-eqz v0, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->fileType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadDirPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadPercent()I
    .locals 0

    .line 464
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    return p0
.end method

.method public getDownloadStatus()I
    .locals 0

    .line 460
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getListener()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;
    .locals 0

    .line 436
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    return-object p0
.end method

.method public getPreDownloadSize()Ljava/lang/Long;
    .locals 2

    .line 452
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 432
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->url:Ljava/lang/String;

    return-object p0
.end method

.method public handleMessage()V
    .locals 10

    .line 339
    iget v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    const-string v1, "["

    const-string v2, "DownLoadTask"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 346
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] download failed, reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onError(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    goto/16 :goto_0

    .line 385
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] download pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v3, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v3, :cond_2

    .line 387
    iget-wide v5, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    iget-wide v7, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    iget v9, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    move-object v4, p0

    invoke-interface/range {v3 .. v9}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onPause(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V

    goto/16 :goto_0

    .line 378
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] download completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v0, :cond_2

    .line 380
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onDownloadSuccess(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V

    goto :goto_0

    .line 370
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] download cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onCancel(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    :cond_0
    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v1, :cond_2

    .line 361
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->isProgressAppend:Z

    if-eqz v0, :cond_1

    .line 362
    iget-wide v3, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    iget-wide v5, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    iget v7, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V

    goto :goto_0

    .line 364
    :cond_1
    iget-wide v3, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    iget-wide v5, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    iget-wide v7, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->preDownloadSize:J

    add-long/2addr v5, v7

    iget v7, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V

    goto :goto_0

    .line 353
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] download prepare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mListener:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;

    if-eqz v0, :cond_2

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;->onPrepare(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x6

    .line 303
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    .line 304
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "bytes="

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v3, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->FILE_MODE:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x2

    .line 83
    iput v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    .line 88
    iget-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->md5sum:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/MD5Utils;->checkMd5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    .line 91
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    .line 92
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    const/16 v0, 0x3e8

    .line 93
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->percent:I

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->onCallBack()V

    return-void

    .line 99
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->url:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "RANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mDownLoadFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->call:Lokhttp3/Call;

    .line 107
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x8

    .line 163
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V

    goto :goto_0

    :catch_1
    const/4 v0, 0x7

    .line 160
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->error(I)V

    :goto_0
    return-void
.end method

.method public setBuilder(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mBuilder:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCompletedSize(J)V
    .locals 0

    .line 448
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->completedSize:J

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->downloadStatus:I

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 444
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->totalSize:J

    return-void
.end method
