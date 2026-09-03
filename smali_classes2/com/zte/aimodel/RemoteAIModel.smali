.class Lcom/zte/aimodel/RemoteAIModel;
.super Ljava/lang/Object;
.source "RemoteAIModel.java"

# interfaces
.implements Lcom/zte/aimodel/IAIModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAIModel"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

.field private mService:Lcom/zte/aimodel/IVendorAIModelService;

.field private final mWaitLock:Ljava/lang/Object;

.field private source:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mWaitLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/zte/aimodel/RemoteAIModel$1;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/RemoteAIModel$1;-><init>(Lcom/zte/aimodel/RemoteAIModel;)V

    iput-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mConnection:Landroid/content/ServiceConnection;

    .line 107
    new-instance v0, Lcom/zte/aimodel/RemoteAIModel$2;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/RemoteAIModel$2;-><init>(Lcom/zte/aimodel/RemoteAIModel;)V

    iput-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 120
    new-instance v0, Lcom/zte/aimodel/RemoteAIModel$3;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/RemoteAIModel$3;-><init>(Lcom/zte/aimodel/RemoteAIModel;)V

    iput-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aimodel/RemoteAIModel;)Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mWaitLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/aimodel/RemoteAIModel;)Lcom/zte/aimodel/IVendorAIModelService;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/aimodel/RemoteAIModel;Lcom/zte/aimodel/IVendorAIModelService;)Lcom/zte/aimodel/IVendorAIModelService;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimodel/RemoteAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/aimodel/RemoteAIModel;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/aimodel/RemoteAIModel;)Landroid/content/ServiceConnection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public checkIfConnected()V
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/zte/aimodel/RemoteAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/zte/aimodel/RemoteAIModel;->connect(Landroid/content/Context;)V

    .line 36
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 38
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

    .line 40
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized connect(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/zte/aimodel/RemoteAIModel;->disconnect()V

    .line 49
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.zte.aimodel"

    const-string v1, "com.zte.aimodel.VendorAIModelService"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string v1, "com.zte.aimodel.IVendorAIModelService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/aimodel/RemoteAIModel;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 54
    iget-object p1, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aimodel/utils/ModelSwitchController;->registerModelChange(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
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

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Lcom/zte/aimodel/utils/ModelSwitchController;->unregisterModelChange(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mService:Lcom/zte/aimodel/IVendorAIModelService;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/zte/aimodel/RemoteAIModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/aimodel/RemoteAIModel;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
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

    .line 72
    iget-object p0, p0, Lcom/zte/aimodel/RemoteAIModel;->mFeatureGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-object p0
.end method

.method public getSource()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/zte/aimodel/RemoteAIModel;->source:I

    return p0
.end method

.method public setSource(I)Lcom/zte/aimodel/RemoteAIModel;
    .locals 0

    .line 22
    iput p1, p0, Lcom/zte/aimodel/RemoteAIModel;->source:I

    return-object p0
.end method
