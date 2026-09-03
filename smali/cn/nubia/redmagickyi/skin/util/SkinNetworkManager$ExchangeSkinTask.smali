.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExchangeSkinTask"
.end annotation


# static fields
.field private static final MIN_DELAYED:J = 0x1f4L


# instance fields
.field private currentTime:J

.field private exchangeDialog:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

.field private skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

.field private taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->dismissReceiveDialog()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->isExchangeDialogShowing()Z

    move-result p0

    return p0
.end method

.method private dismissReceiveDialog()V
    .locals 1

    .line 253
    const-string v0, "dismissReceiveDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeDialog:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeDialog:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

    return-void
.end method

.method private isExchangeDialogShowing()Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeDialog:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showExchangeDialog(Landroid/content/Context;Z)V
    .locals 1

    .line 233
    const-string v0, "showExchangeDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->isExchangeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$1;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeDialog:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

    .line 245
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->show()V

    return-void
.end method


# virtual methods
.method public cancelExchangeSkin()V
    .locals 3

    .line 220
    const-string v0, "cancelExchangeSkin"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->dismissReceiveDialog()V

    .line 222
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    .line 223
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 224
    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;->onExchangeError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->cancel()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    :cond_1
    return-void
.end method

.method public exchangeSkinFromAchievement(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 2

    .line 186
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "exchangeSkinFromAchievement"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->showExchangeDialog(Landroid/content/Context;Z)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->currentTime:J

    .line 190
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->cancel()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    .line 194
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    invoke-direct {p1, p2, v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;-><init>(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    .line 195
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->load()V

    goto :goto_0

    .line 197
    :cond_1
    const-string p1, "exchangeSkin, no network"

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :goto_0
    return-void
.end method

.method public exchangeSkinFromActivity(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;)V
    .locals 2

    .line 203
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "exchangeSkinFromActivity"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->showExchangeDialog(Landroid/content/Context;Z)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->currentTime:J

    .line 207
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->cancel()V

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    .line 211
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    invoke-direct {p1, p2, p3, v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;-><init>(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->skinExchangeManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    .line 212
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->load()V

    goto :goto_0

    .line 214
    :cond_1
    const-string p1, "exchangeSkin, no network"

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :goto_0
    return-void
.end method
