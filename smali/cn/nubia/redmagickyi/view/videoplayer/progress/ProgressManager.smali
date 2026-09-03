.class public Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
.super Ljava/lang/Object;
.source "ProgressManager.java"


# static fields
.field private static progressManager:Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;


# instance fields
.field private progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressManager:Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressManager:Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    .line 19
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressManager:Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearProgress(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSavedProgress(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    return-object p0
.end method

.method public release()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressMap:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public saveProgress(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;)V
    .locals 1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->progressMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
