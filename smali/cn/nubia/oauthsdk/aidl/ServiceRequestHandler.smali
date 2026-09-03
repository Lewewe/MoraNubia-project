.class public Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcn/nubia/oauthsdk/aidl/DisconnectHandler;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnecting:Z

.field private mService:Lcn/nubia/binder/IBinderService;

.field private mTimerTask:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

.field private final mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 30
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    new-instance p1, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-direct {p1, p0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;-><init>(Lcn/nubia/oauthsdk/aidl/DisconnectHandler;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mTimerTask:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)Landroid/content/Intent;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->createAccessIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private declared-synchronized connect()V
    .locals 2

    const-string v0, "ServiceRequestHandler mIsConnecting:"

    monitor-enter p0

    .line 59
    :try_start_0
    const-string v1, "ServiceRequestHandler connect:"

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;

    invoke-direct {v1, p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;-><init>(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAccessIntent()Landroid/content/Intent;
    .locals 2

    .line 108
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.service.NBService"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NBService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleWaitingQueue()V
    .locals 4

    .line 52
    :goto_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 53
    new-array v1, v1, [Lcn/nubia/binder/IBinderService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleWaitingQueue request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isConnected()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 117
    const-string v0, "ServiceRequestHandler binderDied:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    .line 120
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 121
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mTimerTask:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->cancel()V

    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    const-string v0, "ServicRequestHandler"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 128
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    .line 129
    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 131
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    .line 135
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectionFree()Z
    .locals 0

    .line 144
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 82
    const-string p1, "ServiceRequestHandler onServiceConnected:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    const-string p1, "ServiceRequestHandler onServiceConnected1:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 85
    iput-object p2, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 86
    invoke-static {p2}, Lcn/nubia/binder/IBinderService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/binder/IBinderService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object p2, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 91
    iget-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mTimerTask:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->start()V

    .line 92
    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->handleWaitingQueue()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->binderDied()V

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 101
    const-string p1, "ServiceRequestHandler onServiceDisconnected:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    .line 104
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 148
    const-string v0, "ServiceRequestHandler release:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mIsConnecting:Z

    .line 150
    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    const-string v2, "ServicRequestHandler"

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    const-string v0, "release unlinkToDeath err:"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    :try_start_1
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 163
    :catch_1
    const-string v0, "release unbindService err:"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    .line 169
    :cond_2
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 170
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mTimerTask:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->cancel()V

    return-void
.end method

.method public sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceRequestHandler bindService isConnected():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceRequestHandler bindService request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lcn/nubia/binder/IBinderService;

    const/4 v1, 0x0

    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mService:Lcn/nubia/binder/IBinderService;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->connect()V

    :goto_0
    return-void
.end method
