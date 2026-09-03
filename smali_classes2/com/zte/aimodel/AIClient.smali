.class public Lcom/zte/aimodel/AIClient;
.super Ljava/lang/Object;
.source "AIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/AIClient$MODEL_SOURCE;
    }
.end annotation


# static fields
.field public static final ONLINE:I = 0x1

.field public static final REMOTE:I

.field private static sInstance:Lcom/zte/aimodel/AIClient;


# instance fields
.field private mDefaultAIModelSourceChat:I

.field private mDefaultAIModelSourcePictureAnalyze:I

.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/zte/aimodel/feature/IFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalAIModel:Lcom/zte/aimodel/LocalAIModel;

.field private mRemoteAIModel:Lcom/zte/aimodel/RemoteAIModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/zte/aimodel/RemoteAIModel;

    invoke-direct {v0}, Lcom/zte/aimodel/RemoteAIModel;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/AIClient;->mRemoteAIModel:Lcom/zte/aimodel/RemoteAIModel;

    .line 33
    new-instance v0, Lcom/zte/aimodel/LocalAIModel;

    invoke-direct {v0}, Lcom/zte/aimodel/LocalAIModel;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/AIClient;->mLocalAIModel:Lcom/zte/aimodel/LocalAIModel;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/AIClient;->mFeatures:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/zte/aimodel/AIClient;
    .locals 2

    .line 37
    const-class v0, Lcom/zte/aimodel/AIClient;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/zte/aimodel/AIClient;->sInstance:Lcom/zte/aimodel/AIClient;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/zte/aimodel/AIClient;

    invoke-direct {v1}, Lcom/zte/aimodel/AIClient;-><init>()V

    sput-object v1, Lcom/zte/aimodel/AIClient;->sInstance:Lcom/zte/aimodel/AIClient;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/zte/aimodel/AIClient;->sInstance:Lcom/zte/aimodel/AIClient;

    return-object v0

    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getModel(I)Lcom/zte/aimodel/IAIModel;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/zte/aimodel/AIClient;->mRemoteAIModel:Lcom/zte/aimodel/RemoteAIModel;

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/RemoteAIModel;->setSource(I)Lcom/zte/aimodel/RemoteAIModel;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/zte/aimodel/AIClient;->mLocalAIModel:Lcom/zte/aimodel/LocalAIModel;

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/LocalAIModel;->setSource(I)Lcom/zte/aimodel/LocalAIModel;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized of(II)Lcom/zte/aimodel/feature/IFeature;
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0, p2}, Lcom/zte/aimodel/AIClient;->getModel(I)Lcom/zte/aimodel/IAIModel;

    move-result-object p2

    .line 57
    invoke-interface {p2}, Lcom/zte/aimodel/IAIModel;->checkIfConnected()V

    .line 58
    iget-object v0, p0, Lcom/zte/aimodel/AIClient;->mFeatures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/feature/IFeature;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;

    invoke-direct {v0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;-><init>()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/zte/aimodel/feature/chat/FeatureChat;

    invoke-direct {v0}, Lcom/zte/aimodel/feature/chat/FeatureChat;-><init>()V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/zte/aimodel/AIClient;->mFeatures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    invoke-interface {p2}, Lcom/zte/aimodel/IAIModel;->getFeature()Lcom/zte/aimodel/feature/IFeature$IGetter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/aimodel/feature/IFeature;->setFeatureGetter(Lcom/zte/aimodel/feature/IFeature$IGetter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/zte/aimodel/AIClient;->mRemoteAIModel:Lcom/zte/aimodel/RemoteAIModel;

    invoke-virtual {v0, p1}, Lcom/zte/aimodel/RemoteAIModel;->connect(Landroid/content/Context;)V

    .line 110
    iget-object p0, p0, Lcom/zte/aimodel/AIClient;->mLocalAIModel:Lcom/zte/aimodel/LocalAIModel;

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/LocalAIModel;->connect(Landroid/content/Context;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/zte/aimodel/AIClient;->mRemoteAIModel:Lcom/zte/aimodel/RemoteAIModel;

    invoke-virtual {v0}, Lcom/zte/aimodel/RemoteAIModel;->disconnect()V

    .line 115
    iget-object p0, p0, Lcom/zte/aimodel/AIClient;->mLocalAIModel:Lcom/zte/aimodel/LocalAIModel;

    invoke-virtual {p0}, Lcom/zte/aimodel/LocalAIModel;->disconnect()V

    return-void
.end method

.method public getDefaultAIModelSourceChat()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/zte/aimodel/AIClient;->mDefaultAIModelSourceChat:I

    return p0
.end method

.method public getDefaultAIModelSourcePictureAnalyze()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/zte/aimodel/AIClient;->mDefaultAIModelSourcePictureAnalyze:I

    return p0
.end method

.method public declared-synchronized ofChat(I)Lcom/zte/aimodel/feature/chat/FeatureChat;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/AIClient;->of(II)Lcom/zte/aimodel/feature/IFeature;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/feature/chat/FeatureChat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ofPictureAnalyze(I)Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 89
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/AIClient;->of(II)Lcom/zte/aimodel/feature/IFeature;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultAIModelSourceChat(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/zte/aimodel/AIClient;->mDefaultAIModelSourceChat:I

    return-void
.end method

.method public setDefaultAIModelSourcePictureAnalyze(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/zte/aimodel/AIClient;->mDefaultAIModelSourcePictureAnalyze:I

    return-void
.end method
