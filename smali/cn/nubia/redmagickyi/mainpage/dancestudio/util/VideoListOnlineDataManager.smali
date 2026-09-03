.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;
.super Ljava/lang/Object;
.source "VideoListOnlineDataManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "VideoListOnlineDataManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;
    .locals 1

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    .line 26
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    return-object v0
.end method

.method private mergeIntoDatabase()V
    .locals 9

    .line 142
    const-string v0, "begin merge into database"

    const-string v1, "VideoListOnlineDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->queryData()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 152
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

    move-result v7

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 153
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->isNewAdd()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setNewAdd(Z)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setNewAdd(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_4

    if-eqz v0, :cond_5

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 166
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "need to merge into database? "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    .line 168
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->insertData(Ljava/util/List;)V

    .line 170
    :cond_6
    const-string p0, "end merge into database"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseVideoListResponse(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    new-instance p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;-><init>()V

    .line 82
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setPageNo(I)V

    .line 83
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setId(I)V

    .line 84
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getAuthor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setAuthor(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setDescription(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getPublish_time()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setPublishTime(J)V

    .line 88
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getThumbnail_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setThumbnailUrl(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getFile_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setVideoUrl(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getFile_size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setVideoSize(J)V

    .line 91
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getFile_md5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setVideoMd5(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setTags(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBean(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 207
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 208
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

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

.method public getNextPageNo()Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getTotal()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 124
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    if-eqz p0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPageNo()I

    move-result p0

    if-ge p0, v2, :cond_0

    add-int/2addr p0, v0

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public indexOfBean(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)I
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 197
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

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

    .line 220
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 222
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->isNewAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Z
    .locals 2

    .line 178
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->isNewAdd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setNewAdd(Z)V

    .line 180
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getBean(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->setNewAdd(Z)V

    .line 184
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->updateNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public parseVideoListResponse(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;
    .locals 5

    .line 55
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 59
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;

    .line 60
    invoke-direct {p0, v4, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->parseVideoListResponse(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse$Video;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 67
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getTotal()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 68
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->addData(Ljava/util/List;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryVideo(I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 44
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getId()I

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
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateVideoList(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->videoListOnlineBean:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->setTotal(I)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPageNo()I

    move-result v0

    const/4 v1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 105
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPageNo()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->mergeIntoDatabase()V

    :cond_3
    return-void
.end method
