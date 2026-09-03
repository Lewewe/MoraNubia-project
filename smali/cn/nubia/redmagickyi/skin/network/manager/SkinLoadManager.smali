.class public Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "SkinLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;,
        Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;,
        Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SingleInstance;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

.field private skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 24
    const-string v0, "SkinLoadManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    return-object p0
.end method

.method static synthetic access$2002(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->isCanceled:Z

    return p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    return-object v0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->cancel()V

    .line 69
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
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

    .line 56
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallback(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->skinLoader:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->setMaxRetryCount(I)V

    return-object p0
.end method
