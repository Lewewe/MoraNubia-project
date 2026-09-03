.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiveAchievementTask"
.end annotation


# static fields
.field private static final MIN_DELAYED:J = 0x1f4L


# instance fields
.field private achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

.field private currentTime:J

.field private receiveDialog:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

.field private taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$1;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->dismissReceiveDialog()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)Z
    .locals 0

    .line 164
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->isReceiveDialogShowing()Z

    move-result p0

    return p0
.end method

.method private dismissReceiveDialog()V
    .locals 1

    .line 221
    const-string v0, "dismissReceiveDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->receiveDialog:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->receiveDialog:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

    return-void
.end method

.method private isReceiveDialogShowing()Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->receiveDialog:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showReceiveDialog(Landroid/content/Context;)V
    .locals 1

    .line 201
    const-string v0, "showReceiveDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->isReceiveDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->receiveDialog:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

    .line 213
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;->show()V

    return-void
.end method


# virtual methods
.method public cancelReceiveAchievement()V
    .locals 3

    .line 188
    const-string v0, "cancelReceiveAchievement"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->dismissReceiveDialog()V

    .line 190
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$400()Ljava/util/Map;

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

    check-cast v2, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 192
    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onReceiveError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->cancel()V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    :cond_1
    return-void
.end method

.method public receiveAchievement(Landroid/content/Context;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 2

    .line 171
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "receiveAchievement"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->showReceiveDialog(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->currentTime:J

    .line 175
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->cancel()V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    .line 179
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    invoke-direct {p1, p2, v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;-><init>(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->achievementReceiveManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    .line 180
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->load()V

    goto :goto_0

    .line 182
    :cond_1
    const-string p1, "receiveAchievement, no network"

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :goto_0
    return-void
.end method
