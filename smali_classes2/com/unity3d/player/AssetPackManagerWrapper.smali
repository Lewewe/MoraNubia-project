.class Lcom/unity3d/player/AssetPackManagerWrapper;
.super Ljava/lang/Object;
.source "AssetPackManagerWrapper.java"


# static fields
.field private static a:Lcom/unity3d/player/AssetPackManagerWrapper;


# instance fields
.field private c:Ljava/util/HashSet;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object p1, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/AssetPackManagerWrapper;->c:Ljava/util/HashSet;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "AssetPackManagerWrapper should be created only once. Use getInstance() instead."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V
    .locals 0

    .line 70
    sget-object p2, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;

    monitor-enter p2

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/unity3d/player/AssetPackManagerWrapper;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->playCoreApiMissing()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "AssetPackManager API is not available! Make sure your gradle project includes \"com.google.android.play:core\" dependency."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/unity3d/player/AssetPackManagerWrapper;
    .locals 4

    const-class v0, Lcom/unity3d/player/AssetPackManagerWrapper;

    monitor-enter v0

    .line 28
    :goto_0
    :try_start_0
    sget-object v1, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 30
    :try_start_1
    const-class v1, Lcom/unity3d/player/AssetPackManagerWrapper;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 39
    monitor-exit v0

    return-object v1

    .line 37
    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AssetPackManagerWrapper is not yet initialised."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lcom/unity3d/player/AssetPackManagerWrapper;
    .locals 2

    const-class v0, Lcom/unity3d/player/AssetPackManagerWrapper;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/unity3d/player/AssetPackManagerWrapper;

    invoke-direct {v1, p0}, Lcom/unity3d/player/AssetPackManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;

    .line 48
    const-class p0, Lcom/unity3d/player/AssetPackManagerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 49
    sget-object p0, Lcom/unity3d/player/AssetPackManagerWrapper;->a:Lcom/unity3d/player/AssetPackManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 45
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "AssetPackManagerWrapper.init() should be called only once. Use getInstance() instead."

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public cancelAssetPackDownload(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 94
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/AssetPackManagerWrapper;->cancelAssetPackDownloads([Ljava/lang/String;)V

    return-void
.end method

.method public cancelAssetPackDownloads([Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method

.method public downloadAssetPack(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/unity3d/player/AssetPackManagerWrapper;->downloadAssetPacks([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    return-void
.end method

.method public downloadAssetPacks([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method

.method public getAssetPackPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    .line 90
    const-string p0, ""

    return-object p0
.end method

.method public getAssetPackState(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/unity3d/player/AssetPackManagerWrapper;->getAssetPackStates([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V

    return-void
.end method

.method public getAssetPackStates([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method

.method public playCoreApiMissing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public registerDownloadStatusListener(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeAssetPack(Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method

.method public requestToUseMobileData(Landroid/app/Activity;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method

.method public unregisterDownloadStatusListener(Ljava/lang/Object;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/unity3d/player/AssetPackManagerWrapper;->b()V

    return-void
.end method
