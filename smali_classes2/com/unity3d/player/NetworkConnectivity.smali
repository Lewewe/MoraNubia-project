.class public Lcom/unity3d/player/NetworkConnectivity;
.super Landroid/app/Activity;
.source "NetworkConnectivity.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Landroid/net/ConnectivityManager;

.field private final f:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/unity3d/player/NetworkConnectivity;->a:I

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/unity3d/player/NetworkConnectivity;->b:I

    const/4 v2, 0x2

    .line 18
    iput v2, p0, Lcom/unity3d/player/NetworkConnectivity;->c:I

    .line 19
    iput v0, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    .line 21
    new-instance v0, Lcom/unity3d/player/NetworkConnectivity$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/NetworkConnectivity$1;-><init>(Lcom/unity3d/player/NetworkConnectivity;)V

    iput-object v0, p0, Lcom/unity3d/player/NetworkConnectivity;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 51
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    .line 52
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 54
    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/unity3d/player/NetworkConnectivity;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    return p0
.end method

.method public final b()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/unity3d/player/NetworkConnectivity;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
