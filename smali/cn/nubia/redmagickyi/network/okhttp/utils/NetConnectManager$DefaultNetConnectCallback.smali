.class Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetConnectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCapabilitiesChanged$1$cn-nubia-redmagickyi-network-okhttp-utils-NetConnectManager$DefaultNetConnectCallback(Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 0
    const/16 v0, 0x10

    .line 196
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x1

    .line 198
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz v0, :cond_4

    .line 201
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    if-eqz v1, :cond_0

    .line 203
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 205
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 208
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 209
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$402(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 210
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$500(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    .line 211
    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;->onNetStateChanged(Z)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$200(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object p1

    if-eq p1, v0, :cond_4

    .line 216
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$202(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$600(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    .line 218
    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;->onNetTypeChanged(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method synthetic lambda$onLost$0$cn-nubia-redmagickyi-network-okhttp-utils-NetConnectManager$DefaultNetConnectCallback()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$200(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$402(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$500(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    .line 183
    invoke-interface {v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;->onNetStateChanged(Z)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$600(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    .line 186
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;->onNetTypeChanged(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 194
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 195
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$300(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 177
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$202(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 179
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$300(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
