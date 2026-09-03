.class public Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;
.super Ljava/lang/Object;
.source "VideoListOnlineDataManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "VideoListOnlineDataManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;
    .locals 1

    .line 17
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    .line 20
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getNextPageNo(I)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->getTotal()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 91
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 93
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    if-eqz p0, :cond_1

    if-ge p1, v2, :cond_0

    add-int/2addr p1, v0

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public parseVideoListResponse(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;
    .locals 7

    .line 49
    new-instance p0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 53
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;

    if-eqz v3, :cond_0

    .line 55
    new-instance v4, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;-><init>()V

    .line 56
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->setId(I)V

    .line 57
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->getRes_code()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->setResCode(I)V

    .line 58
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->getFile_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->setVideoUrl(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->getFile_size()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->setVideoSize(J)V

    .line 60
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse$Video;->getFile_md5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->setVideoMd5(Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 68
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;->getTotal()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 69
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->addData(Ljava/util/List;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryVideo(I)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    .line 38
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryVideoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateVideoList(Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
