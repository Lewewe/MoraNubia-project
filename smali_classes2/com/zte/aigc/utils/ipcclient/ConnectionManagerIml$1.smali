.class Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;


# direct methods
.method constructor <init>(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p1}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$100(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$300(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Lcom/zte/aigc/utils/ipcclient/IServiceHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/zte/aigc/utils/ipcclient/IServiceHandler;->onTransact(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$202(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p2, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p2}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$000(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Lcom/zte/aigc/utils/ipcclient/StatuMonitor;

    move-result-object p2

    iget-object v0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$200(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/zte/aigc/utils/ipcclient/StatuMonitor;->onServiceConnected(Ljava/lang/Object;)V

    .line 36
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$100(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-virtual {p1}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    .line 29
    iget-object p0, p0, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p0}, Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;->access$000(Lcom/zte/aigc/utils/ipcclient/ConnectionManagerIml;)Lcom/zte/aigc/utils/ipcclient/StatuMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aigc/utils/ipcclient/StatuMonitor;->onServiceDisconnected()V

    return-void
.end method
