.class public Lcom/zte/aigc/utils/ipcclient/IPCClient;
.super Ljava/lang/Object;
.source "IPCClient.java"

# interfaces
.implements Lcom/zte/aigc/utils/ipcclient/StatuMonitor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zte/aigc/utils/ipcclient/StatuMonitor<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/aigc/utils/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/aigc/utils/ipcclient/IServiceHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aigc/utils/ipcclient/IServiceHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-direct {v0, p1, p2, p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;-><init>(Landroid/content/Context;Lcom/zte/aigc/utils/ipcclient/IServiceHandler;Lcom/zte/aigc/utils/ipcclient/StatuMonitor;)V

    iput-object v0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    .line 17
    invoke-static {}, Lcom/zte/aigc/utils/task/ZteExecutor;->newSinglePool()Lcom/zte/aigc/utils/task/ZteExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    invoke-virtual {v0}, Lcom/zte/aigc/utils/task/ZteExecutor;->shutdown()V

    .line 53
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    invoke-interface {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManager;->close()V

    return-void
.end method

.method public connect()V
    .locals 0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    invoke-interface {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManager;->close()V

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method final getConnectionManager()Lcom/zte/aigc/utils/ipcclient/ConnectionManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zte/aigc/utils/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    return-object p0
.end method

.method public final getService()Ljava/lang/Object;
    .locals 0
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

    .line 38
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    invoke-interface {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onRemoteExceptionOccurred(Ljava/lang/Exception;)V
    .locals 2

    .line 42
    const-string v0, "IPCClient"

    const-string v1, "remote service exception, closing service"

    invoke-static {v0, v1}, Lcom/zte/aigc/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mConnManager:Lcom/zte/aigc/utils/ipcclient/ConnectionManager;

    invoke-interface {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManager;->close()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method protected summitTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/IPCClient;->mZteExecutor:Lcom/zte/aigc/utils/task/ZteExecutor;

    invoke-virtual {p0, p1}, Lcom/zte/aigc/utils/task/ZteExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
