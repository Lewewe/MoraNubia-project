.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;
.super Ljava/lang/Object;
.source "GameAssistRemoteClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 179
    const-string p1, "GameAssistRemoteClient"

    const-string v0, "Service connected begin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 182
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p2}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$102(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAgent;)Lcom/zte/gameassist/aiagent/IGameAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$300(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$600(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/zte/gameassist/aiagent/IGameAgent;->registerCallback(Ljava/lang/String;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$700(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 188
    :try_start_2
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    const-string p0, "GameAssistRemoteClient"

    const-string p1, "Service connected end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 191
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 197
    const-string p1, "GameAssistRemoteClient"

    const-string v0, "Service disconnected begin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$102(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAgent;)Lcom/zte/gameassist/aiagent/IGameAgent;

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 202
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    const-string p0, "GameAssistRemoteClient"

    const-string p1, "Service disconnected end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 202
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
