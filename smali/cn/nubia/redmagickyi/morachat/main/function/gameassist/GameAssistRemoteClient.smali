.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;
.super Ljava/lang/Object;
.source "GameAssistRemoteClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;
    }
.end annotation


# static fields
.field public static final GAMEASSIST_PACKAGE:Ljava/lang/String; = "cn.nubia.gameassist"

.field public static final GAMEASSIST_SERVICE:Ljava/lang/String; = "com.zte.gameassist.aiagent.GameAgentService"

.field private static final TAG:Ljava/lang/String; = "GameAssistRemoteClient"

.field private static sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;


# instance fields
.field private isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDefaultCallback:Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

.field private mFeatureGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/zte/gameassist/aiagent/IGameAgent;

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mWaitLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$3;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mDefaultCallback:Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    .line 175
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$4;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mConnection:Landroid/content/ServiceConnection;

    .line 207
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$5;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 220
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$6;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatureGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mWaitLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAgent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mService:Lcom/zte/gameassist/aiagent/IGameAgent;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->unregistCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAgent;)Lcom/zte/gameassist/aiagent/IGameAgent;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mService:Lcom/zte/gameassist/aiagent/IGameAgent;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;I)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getFeature(I)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mDefaultCallback:Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;)Landroid/content/ServiceConnection;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->registCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    return-void
.end method

.method private getFeature(I)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatureGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatureGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V

    .line 69
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;
    .locals 2

    .line 38
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    return-object v0

    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mContext:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatures:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mFeatures:Ljava/util/Map;

    .line 51
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    if-nez p1, :cond_1

    .line 52
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private registCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private unregistCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mInnerCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connect result: "

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->init(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->disconnect()V

    .line 129
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 130
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.gameassist"

    const-string v3, "com.zte.gameassist.aiagent.GameAgentService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 132
    const-string v1, "GameAssistRemoteClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mService:Lcom/zte/gameassist/aiagent/IGameAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 142
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mDefaultCallback:Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    invoke-interface {v1, v0, v2}, Lcom/zte/gameassist/aiagent/IGameAgent;->unregisterCallback(Ljava/lang/String;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized of(ILcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->mService:Lcom/zte/gameassist/aiagent/IGameAgent;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ofChat(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->of(ILcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 123
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->of(ILcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
