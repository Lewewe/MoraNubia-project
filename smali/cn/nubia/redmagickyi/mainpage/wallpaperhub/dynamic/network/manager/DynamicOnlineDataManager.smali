.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
.source "DynamicOnlineDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    .line 17
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    return-object v0
.end method


# virtual methods
.method public parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 29
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;

    if-eqz v2, :cond_1

    .line 31
    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;-><init>(I)V

    .line 32
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getAudible()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setHasVoice(Z)V

    .line 34
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getThumbnail_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setThumbnailUrl(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setFileUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setFileSize(J)V

    .line 37
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse$Wallpaper;->getFile_md5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->setFileMd5(Ljava/lang/String;)V

    .line 38
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
