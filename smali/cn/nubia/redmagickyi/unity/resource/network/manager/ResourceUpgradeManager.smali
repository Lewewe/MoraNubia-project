.class public Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;
.super Ljava/lang/Object;
.source "ResourceUpgradeManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;
    }
.end annotation


# static fields
.field private static final MSG_DOWNLOADING:I = 0x1

.field private static final MSG_DOWNLOAD_FAILED:I = 0x3

.field private static final MSG_DOWNLOAD_SUCCESS:I = 0x2

.field private static final MSG_UNZIP_FAILED:I = 0x5

.field private static final MSG_UNZIP_SUCCESS:I = 0x4

.field private static final TASK_ID:Ljava/lang/String; = "bundle"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

.field private mHandler:Landroid/os/Handler;

.field private networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

.field private onlineResourceBotItem:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

.field private task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    new-instance v0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$2;-><init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 253
    new-instance v0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;-><init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->onlineResourceBotItem:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    .line 50
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;-><init>()V

    const-string v1, "bundle"

    .line 51
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getFile_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setUrl(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->BUNDLES_CACHE_ROOT:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setDownloadDirPath(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getFile_md5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setMd5sum(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    const-string/jumbo v0, "zip"

    .line 55
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setFileType(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setIsProgressAppend(Z)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setListener(Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->build()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    return-object p0
.end method

.method private registReceiver()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 221
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private unregistReceiver()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    const-string p0, "bundle"

    const-string v0, "ResourceUpgradeManager, unregistReceiver failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const/4 p0, 0x0

    .line 181
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_0

    .line 211
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    .line 185
    :cond_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 188
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x400

    .line 190
    new-array v1, v1, [B

    .line 191
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 196
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    :goto_1
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 199
    invoke-virtual {v2, v1, p0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 201
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 203
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 196
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 205
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 206
    array-length p1, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-gtz p1, :cond_5

    goto :goto_4

    .line 211
    :cond_5
    :try_start_8
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return p0

    :catchall_2
    move-exception p1

    .line 181
    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->release()V

    .line 176
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object p0

    const-string v0, "bundle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->cancel(Ljava/lang/String;Z)V

    return-void
.end method

.method public getBundleData()Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->onlineResourceBotItem:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    return-object p0
.end method

.method public getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method public onCancel(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
    .locals 5

    .line 111
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 112
    iput v0, p1, Landroid/os/Message;->what:I

    .line 113
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    .line 120
    :goto_0
    invoke-direct {p0, p2, v0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    const/4 v4, 0x3

    if-le p1, v4, :cond_0

    goto :goto_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    .line 126
    array-length v1, p1

    if-ge v3, v1, :cond_3

    .line 127
    aget-object v1, p1, v3

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "bundle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 133
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x4

    .line 134
    iput v1, p1, Landroid/os/Message;->what:I

    .line 135
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 138
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;)V

    :goto_3
    return-void
.end method

.method public onDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V
    .locals 0

    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 96
    iput p2, p1, Landroid/os/Message;->what:I

    .line 97
    iput p6, p1, Landroid/os/Message;->arg1:I

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V
    .locals 0

    return-void
.end method

.method public onPrepare(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;-><init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-eqz p0, :cond_0

    .line 88
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 89
    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->unregistReceiver()V

    return-void
.end method

.method public startDownload(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->listener:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->registReceiver()V

    .line 64
    const-class p1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter p1

    .line 65
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->addDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    .line 67
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
