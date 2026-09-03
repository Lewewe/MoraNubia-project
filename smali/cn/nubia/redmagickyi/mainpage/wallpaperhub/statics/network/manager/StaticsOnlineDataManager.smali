.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
.source "StaticsOnlineDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;

    .line 17
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;

    return-object v0
.end method


# virtual methods
.method public parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 28
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;

    if-eqz v1, :cond_0

    .line 30
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;-><init>(I)V

    .line 31
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getThumbnail_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->setThumbnailUrl(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->setFileUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->setFileSize(J)V

    .line 35
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_md5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->setFileMd5(Ljava/lang/String;)V

    .line 36
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
