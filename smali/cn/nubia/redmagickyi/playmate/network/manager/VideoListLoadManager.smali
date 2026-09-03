.class public Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;,
        Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;,
        Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$SingleInstance;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

.field private videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 14
    const-string v0, "VideoListLoadManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->callback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;
    .locals 0

    .line 13
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->onSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->isCanceled:Z

    return p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    return-object v0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->callback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->callback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
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

    .line 34
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->videoListLoader:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    .line 37
    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->access$200(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallback(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->callback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    return-object p0
.end method
