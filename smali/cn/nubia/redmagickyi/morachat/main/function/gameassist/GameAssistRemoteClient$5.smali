.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;
.super Ljava/lang/Object;
.source "GameAssistRemoteClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 207
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 210
    const-string v0, "GameAssistRemoteClient"

    const-string v1, "Service dead!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/gameassist/aiagent/IGameAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/gameassist/aiagent/IGameAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$800(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/content/ServiceConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
