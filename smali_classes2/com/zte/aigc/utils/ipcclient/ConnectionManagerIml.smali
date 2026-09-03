.class final Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/zte/aigc/utils/ipcclient/ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zte/aigc/utils/ipcclient/ConnectionManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceHandler:Lcom/zte/aigc/utils/ipcclient/IServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/aigc/utils/ipcclient/IServiceHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mStatuMonitor:Lcom/zte/aigc/utils/ipcclient/StatuMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/aigc/utils/ipcclient/StatuMonitor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/zte/aigc/utils/ipcclient/IServiceHandler;Lcom/zte/aigc/utils/ipcclient/StatuMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aigc/utils/ipcclient/IServiceHandler<",
            "TT;>;",
            "Lcom/zte/aigc/utils/ipcclient/StatuMonitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;

    invoke-direct {v0, p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;-><init>(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)V

    iput-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcom/zte/aigc/utils/ipcclient/IServiceHandler;

    .line 45
    iput-object p3, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcom/zte/aigc/utils/ipcclient/StatuMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Lcom/zte/aigc/utils/ipcclient/StatuMonitor;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcom/zte/aigc/utils/ipcclient/StatuMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Lcom/zte/aigc/utils/ipcclient/IServiceHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcom/zte/aigc/utils/ipcclient/IServiceHandler;

    return-object p0
.end method

.method private bindService()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcom/zte/aigc/utils/ipcclient/IServiceHandler;

    invoke-interface {v0}, Lcom/zte/aigc/utils/ipcclient/IServiceHandler;->onServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindService intent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "intent is null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionManager"

    invoke-static {v2, v1}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private synchronizedLock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->bindService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private unbindService()V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    return-void
.end method

.method final disconnect()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->unbindService()V

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    .line 70
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getService()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->synchronizedLock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    :goto_0
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "can\'t get service"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can not be called from main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
