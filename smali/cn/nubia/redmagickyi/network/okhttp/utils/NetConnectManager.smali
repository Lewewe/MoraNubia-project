.class public Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
.super Ljava/lang/Object;
.source "NetConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;,
        Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;,
        Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;,
        Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;,
        Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentConnectType:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

.field private mDefaultNetConnectCallback:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

.field private mIsNetAvailable:Ljava/lang/Boolean;

.field private mNetConnectReceiver:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;

.field private mNetStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetTypeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mainHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetTypeListener:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetStateListener:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mCurrentConnectType:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 0

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mCurrentConnectType:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mIsNetAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mIsNetAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetStateListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetTypeListener:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->sInstance:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->sInstance:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    .line 35
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->sInstance:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetStateListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetTypeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetTypeListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public deinit(Landroid/content/Context;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mDefaultNetConnectCallback:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 81
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetConnectReceiver:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public getConnectType()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 124
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0

    .line 127
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mCurrentConnectType:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    if-eqz v1, :cond_1

    return-object v1

    .line 131
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0

    :cond_2
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 138
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0

    .line 143
    :cond_3
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 69
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mDefaultNetConnectCallback:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mIsNetAvailable:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 160
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v0, 0x10

    .line 165
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public removeNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetStateListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->mNetTypeListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
