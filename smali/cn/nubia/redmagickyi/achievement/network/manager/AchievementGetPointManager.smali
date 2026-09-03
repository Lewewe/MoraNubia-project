.class public Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "AchievementGetPointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;,
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

.field private pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 23
    const-string v0, "AchievementReceiveManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    return-object p0
.end method

.method static synthetic access$1502(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->onSuccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->isCanceled:Z

    return p0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;->onSuccess(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->cancel()V

    .line 56
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->pointGetter:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    .line 46
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->access$100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
