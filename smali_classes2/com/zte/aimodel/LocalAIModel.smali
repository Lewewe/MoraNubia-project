.class public Lcom/zte/aimodel/LocalAIModel;
.super Ljava/lang/Object;
.source "LocalAIModel.java"

# interfaces
.implements Lcom/zte/aimodel/IAIModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAIModel"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

.field private mService:Lcom/zte/aimodel/IVendorAIModelService;

.field private final mWaitLock:Ljava/lang/Object;

.field private source:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mWaitLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/zte/aimodel/LocalAIModel$1;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/LocalAIModel$1;-><init>(Lcom/zte/aimodel/LocalAIModel;)V

    iput-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mConnection:Landroid/content/ServiceConnection;

    .line 94
    new-instance v0, Lcom/zte/aimodel/LocalAIModel$2;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/LocalAIModel$2;-><init>(Lcom/zte/aimodel/LocalAIModel;)V

    iput-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aimodel/LocalAIModel;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel;->mWaitLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/aimodel/LocalAIModel;)Lcom/zte/aimodel/IVendorAIModelService;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/aimodel/LocalAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimodel/LocalAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/aimodel/LocalAIModel;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public checkIfConnected()V
    .locals 2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/zte/aimodel/LocalAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/zte/aimodel/LocalAIModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/zte/aimodel/LocalAIModel;->connect(Landroid/content/Context;)V

    .line 35
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized connect(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/zte/aimodel/LocalAIModel;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/zte/aimodel/LocalAIModel;->disconnect()V

    .line 48
    iget-object p1, p0, Lcom/zte/aimodel/LocalAIModel;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 49
    iget-object p1, p0, Lcom/zte/aimodel/LocalAIModel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aimodel/utils/ModelSwitchController;->registerModelChange(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/zte/aimodel/utils/ModelSwitchController;->unregisterModelChange(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zte/aimodel/LocalAIModel;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFeature()Lcom/zte/aimodel/feature/IFeature$IGetter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zte/aimodel/LocalAIModel;->mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-object p0
.end method

.method public getSource()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/zte/aimodel/LocalAIModel;->source:I

    return p0
.end method

.method public setSource(I)Lcom/zte/aimodel/LocalAIModel;
    .locals 0

    .line 21
    iput p1, p0, Lcom/zte/aimodel/LocalAIModel;->source:I

    return-object p0
.end method
