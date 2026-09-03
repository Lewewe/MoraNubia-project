.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
.super Ljava/lang/Object;
.source "BaseWallPaperOnlineDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private wallpaperList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "DynamicOnlineDataManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->wallpaperList:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public queryTotalWallPaper()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->wallpaperList:Ljava/util/Vector;

    return-object p0
.end method

.method public updateWallPaperList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->wallpaperList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 34
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->wallpaperList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateWallPaperList complete, size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->wallpaperList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DynamicOnlineDataManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
