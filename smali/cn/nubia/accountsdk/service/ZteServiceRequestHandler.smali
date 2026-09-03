.class public Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;
.super Ljava/lang/Object;
.source "ZteServiceRequestHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcn/nubia/accountsdk/service/DisconnectHandler;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mIsConnecting:Z

.field private mService:Lorg/zx/AuthComp/IMyService;

.field private mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

.field private final mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z

    .line 30
    iput-object p1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    if-nez v0, :cond_0

    .line 58
    iget-boolean v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z

    .line 60
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->createAccessIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAccessIntent()Landroid/content/Intent;
    .locals 1

    .line 92
    new-instance p0, Landroid/content/Intent;

    const-string v0, "org.zx.AuthComp.IMyService"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v0, "org.zx.AuthComp"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private handleWaitingQueue()V
    .locals 4

    .line 51
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Lorg/zx/AuthComp/IMyService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isConnected()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

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

    .line 100
    const-string v0, "binderDied"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z

    .line 103
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 104
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->cancel()V

    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    const-string v0, "disconnect"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 112
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    .line 114
    iput-boolean v1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z

    .line 115
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectionFree()Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iput-object p2, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 73
    invoke-static {p2}, Lorg/zx/AuthComp/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object p2, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    const-string/jumbo p1, "zte onServiceConnected"

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->handleWaitingQueue()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->binderDied()V

    .line 84
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

    return-void
.end method

.method public sendRequest(Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;)Z
    .locals 2

    .line 38
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lorg/zx/AuthComp/IMyService;

    iget-object p0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mService:Lorg/zx/AuthComp/IMyService;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->connect()V

    :goto_0
    return v1
.end method
