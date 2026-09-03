.class public Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
.super Ljava/lang/Object;
.source "MediaDownloadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;
    }
.end annotation


# static fields
.field private static final MSG_DOWNLOADING:I = 0x1

.field private static final MSG_DOWNLOAD_FAILED:I = 0x3

.field private static final MSG_DOWNLOAD_SUCCESS:I = 0x2


# instance fields
.field private TASK_ID:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

.field private mHandler:Landroid/os/Handler;

.field private networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

.field private task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "media"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 164
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;-><init>(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    .line 38
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setUrl(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setMd5sum(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setFileType(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setDownloadDirPath(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setListener(Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->build()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->listener:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    return-object p0
.end method

.method private registReceiver()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 134
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private unregistReceiver()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->isReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    const-string v0, "MediaDownloadManager, unregistReceiver failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->release()V

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->cancel(Ljava/lang/String;Z)V

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method public onCancel(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
    .locals 1

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 86
    iput v0, p1, Landroid/os/Message;->what:I

    .line 87
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized onDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 68
    iput v0, p1, Landroid/os/Message;->what:I

    .line 69
    iput p6, p1, Landroid/os/Message;->arg1:I

    const/4 p6, 0x2

    .line 71
    new-array p6, p6, [J

    const/4 v1, 0x0

    aput-wide p2, p6, v1

    aput-wide p4, p6, v0

    iput-object p6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onError(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->TASK_ID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaDownloadManager, onError, file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->listener:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->listener:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

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
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->unregistReceiver()V

    return-void
.end method

.method public startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->listener:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->registReceiver()V

    .line 51
    const-class p1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter p1

    .line 52
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->task:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->addDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    .line 54
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
