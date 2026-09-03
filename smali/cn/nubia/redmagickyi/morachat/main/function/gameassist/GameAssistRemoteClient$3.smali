.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;
.super Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;
.source "GameAssistRemoteClient.java"


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

    .line 163
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-direct {p0}, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedCallback(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameAssistRemoteClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$500(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$500(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    .line 169
    invoke-interface {v0, p1, p2}, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;->onReceivedCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
