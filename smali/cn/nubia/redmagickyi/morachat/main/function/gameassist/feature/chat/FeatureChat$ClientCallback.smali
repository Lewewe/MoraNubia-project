.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;
.super Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;
.source "FeatureChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientCallback"
.end annotation


# instance fields
.field private requestId:Ljava/lang/String;

.field private responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-direct {p0}, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->onFailure()V

    return-void
.end method

.method private onFailure()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;->onFailure(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;->onFailure(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;->onSuccess(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->requestId:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    return-object p0
.end method

.method public onReceivedCallback(ILjava/lang/String;)V
    .locals 2

    .line 79
    const-string p1, "GameAssist-FeatureChat"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========onReceivedCallback======="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    monitor-enter p1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->responseCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-static {v0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->access$300(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->stopSession()V

    .line 87
    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->onSuccess(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
