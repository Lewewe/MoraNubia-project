.class Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;
.super Ljava/lang/Object;
.source "DigitalHumanManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "onServiceConnected: name = "

    .line 59
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    const-string v2, "DigitalHumanManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", service binder = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string p0, "DigitalHumanManager"

    const-string p1, "NO context bound, no need to set up model connection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-exit v1

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$100()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    const-string p0, "DigitalHumanManager"

    const-string p1, "NO ServerId bound, no need to rebind model service"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-exit v1

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$200()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 80
    const-string p0, "DigitalHumanManager"

    const-string p1, "failed to set up model connection"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v1

    return-void

    .line 83
    :cond_2
    const-string p0, "DigitalHumanManager"

    const-string p2, "successfully set up model connection"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->get()Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->restoreState()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$300()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 94
    :try_start_3
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$300()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->get()Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;->onServiceConnected(Landroid/content/ComponentName;Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 96
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onServiceDisconnected: name = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DigitalHumanManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$400()V

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$300()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$300()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$OnServiceBindCallback;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_0
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->get()Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->saveState()V

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_1
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "try to rebind server, count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 128
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :catch_1
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->access$100()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager;->bindService(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;)Z

    move-result v1

    move v4, v1

    move v1, p1

    move p1, v4

    goto :goto_1

    :cond_1
    return-void
.end method
