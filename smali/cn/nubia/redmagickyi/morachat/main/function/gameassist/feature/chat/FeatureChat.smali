.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;
.super Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
.source "FeatureChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;,
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameAssist-FeatureChat"


# instance fields
.field private mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

.field private mResponseCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mResponseCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$1;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;->registCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mResponseCallback:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->getIDFromResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createJsonToRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string p1, "ID"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIDFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    .line 117
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    const-string p1, "ID"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 122
    :try_start_2
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 124
    :catch_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object p0
.end method


# virtual methods
.method public startSession(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/IChatRequest;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mResponseCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-virtual {v1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->init(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    .line 39
    const-string p2, "GameAssist-FeatureChat"

    if-nez p1, :cond_0

    .line 40
    const-string p1, "Empty request."

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;)V

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleNLPForGameAgent()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;

    if-eqz v1, :cond_1

    .line 45
    const-string p1, "Disabled."

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;)V

    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;->getService()Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 50
    const-string p1, "Service may disconnected."

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;)V

    return-void

    .line 55
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;->getService()Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/IChatRequest;->getRequestMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->createJsonToRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/zte/gameassist/aiagent/IGameAgent;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WARNING:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mClientCallback:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$ClientCallback;)V

    :goto_0
    return-void
.end method

.method public stopSession()V
    .locals 1

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->mResponseCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
