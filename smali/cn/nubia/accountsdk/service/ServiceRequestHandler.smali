.class public Lcn/nubia/accountsdk/service/ServiceRequestHandler;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcn/nubia/accountsdk/service/DisconnectHandler;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mIsConnecting:Z

.field private mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

.field private mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

.field private final mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/accountsdk/service/ServiceAsyncRequest;",
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
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 29
    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 30
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    new-instance p1, Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-direct {p1, p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;-><init>(Lcn/nubia/accountsdk/service/DisconnectHandler;)V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    return-void
.end method

.method private declared-synchronized connect()V
    .locals 3

    const-string v0, "sendRequest connect mIsConnecting:"

    const-string v1, "sendRequest connect mService:"

    monitor-enter p0

    .line 59
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 64
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->createAccessIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAccessIntent()Landroid/content/Intent;
    .locals 3

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.nbaccountservice.NBAccountService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isNewAccountIntent(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "cn.nubia.accounts.NBACCOUNT_SERVICE"

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.NBAccountService"

    .line 101
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private handleWaitingQueue()V
    .locals 4

    .line 52
    const-string v0, "sendRequest connect handleWaitingQueue:"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isConnected()Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

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

    .line 109
    const-string v0, "binderDied"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    :try_start_0
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 114
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->removeListener()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 118
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    const-string v0, "disconnect mService:"

    monitor-enter p0

    .line 127
    :try_start_0
    const-string v1, "disconnect"

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    const-string v1, "ServiceRequestHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    :try_start_2
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 133
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 141
    :goto_1
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->removeListener()V

    goto :goto_1

    .line 144
    :cond_1
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectionFree()Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 75
    const-string p1, "sendRequest connect onServiceConnected:"

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iput-object p2, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 78
    invoke-static {p2}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/INBAccountService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object p2, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 83
    iget-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->start()V

    .line 84
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->handleWaitingQueue()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->binderDied()V

    .line 88
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

.method public sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z
    .locals 3

    .line 37
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->isConnected()Z

    move-result v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendRequest iscounnect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    iget-object p0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->connect()V

    :goto_0
    return v1
.end method
