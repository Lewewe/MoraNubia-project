.class Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetConnectReceiver"
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

    .line 226
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$cn-nubia-redmagickyi-network-okhttp-utils-NetConnectManager$NetConnectReceiver()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$200(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$402(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

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

    .line 261
    invoke-interface {v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;->onNetStateChanged(Z)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

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

    .line 264
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;->onNetTypeChanged(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 229
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_6

    .line 231
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    .line 233
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 234
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sget-object v3, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->access$700(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sget-object v3, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->access$700(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 241
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->convertType(I)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object p1

    .line 242
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$400(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 243
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$402(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 244
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$500(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    .line 245
    invoke-interface {v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;->onNetStateChanged(Z)V

    goto :goto_2

    .line 249
    :cond_4
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$200(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object p2

    if-eq p1, p2, :cond_6

    .line 250
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$202(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$600(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    .line 252
    invoke-interface {p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;->onNetTypeChanged(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)V

    goto :goto_3

    .line 256
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    sget-object p2, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->None:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$202(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    .line 257
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;->this$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->access$300(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetConnectReceiver;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
