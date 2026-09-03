.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;
.super Ljava/lang/Object;
.source "BaseWallPaperController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseWallPaperController"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

.field private isDataLoaded:Z

.field private mergeRunnable:Ljava/lang/Runnable;

.field private timer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->mergeRunnable:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->isDataLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    return-object p0
.end method

.method private mergeIntoDatabase()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " perform merge into database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallPaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->setPriority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->mergeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getBean(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ")TT;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 138
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getWallPaperType()I
.end method

.method public abstract gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;",
            ")V"
        }
    .end annotation
.end method

.method public indexOfBean(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)I
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 127
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v1

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isHaveNewAdd()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 152
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->isNewAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isLoaded()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->isDataLoaded:Z

    return p0
.end method

.method public abstract loadData()V
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->isNewAdd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->setNewAdd(Z)V

    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getBean(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->setNewAdd(Z)V

    .line 114
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->updateNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected final onLoadComplete()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->mergeIntoDatabase()V

    return-void
.end method

.method protected final onLoadFailed()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;->onLoadFailed()V

    return-void
.end method

.method protected onMergeComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    :cond_0
    return-void
.end method
