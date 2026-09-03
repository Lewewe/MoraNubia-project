.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;
.super Ljava/lang/Object;
.source "GameAssistRemoteClient.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;


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

    .line 220
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/zte/gameassist/aiagent/IGameAgent;
    .locals 0

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object p0

    return-object p0
.end method

.method public registCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$900(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    return-void
.end method

.method public unregistCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$1000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    return-void
.end method
