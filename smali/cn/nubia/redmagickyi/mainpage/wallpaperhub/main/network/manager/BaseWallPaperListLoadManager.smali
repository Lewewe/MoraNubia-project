.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "BaseWallPaperListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;",
        ">",
        "Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;

.field private wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager<",
            "TT;>.WallPaper",
            "ListLoader;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 11
    const-string v0, "WallPaperListLoadManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;
    .locals 0

    .line 10
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getLoadController()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
.end method

.method protected abstract getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
.end method

.method public declared-synchronized load()V
    .locals 2

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 26
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    .line 28
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->wallPaperListLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$WallPaperListLoader;

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager$Callback;

    return-object p0
.end method
