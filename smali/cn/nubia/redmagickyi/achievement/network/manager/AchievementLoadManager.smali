.class public Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "AchievementLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;,
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;,
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$SingleInstance;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

.field private callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 43
    const-string v0, "AchievementLoadManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    return-object p0
.end method

.method static synthetic access$2902(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->isCanceled:Z

    return p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
    .locals 1

    .line 50
    sget-object v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    return-object v0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    .line 88
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->doLoad(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallback(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->achievementLoader:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->setMaxRetryCount(I)V

    return-object p0
.end method
