.class Lcom/unity3d/player/NetworkConnectivity$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/NetworkConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/NetworkConnectivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/NetworkConnectivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/unity3d/player/NetworkConnectivity$1;->this$0:Lcom/unity3d/player/NetworkConnectivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/unity3d/player/NetworkConnectivity$1;->this$0:Lcom/unity3d/player/NetworkConnectivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/unity3d/player/NetworkConnectivity;->access$002(Lcom/unity3d/player/NetworkConnectivity;I)I

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/NetworkConnectivity$1;->this$0:Lcom/unity3d/player/NetworkConnectivity;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/unity3d/player/NetworkConnectivity;->access$002(Lcom/unity3d/player/NetworkConnectivity;I)I

    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 42
    iget-object p0, p0, Lcom/unity3d/player/NetworkConnectivity$1;->this$0:Lcom/unity3d/player/NetworkConnectivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/player/NetworkConnectivity;->access$002(Lcom/unity3d/player/NetworkConnectivity;I)I

    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 37
    iget-object p0, p0, Lcom/unity3d/player/NetworkConnectivity$1;->this$0:Lcom/unity3d/player/NetworkConnectivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unity3d/player/NetworkConnectivity;->access$002(Lcom/unity3d/player/NetworkConnectivity;I)I

    return-void
.end method
