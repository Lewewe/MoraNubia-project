.class Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;
.super Ljava/lang/Object;
.source "SkinLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinLoader"
.end annotation


# instance fields
.field private final IMAGE_DIR_PATH:Ljava/lang/String;

.field private achievementGetPointManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

.field private maxRetryCount:Ljava/lang/Integer;

.field private mediaDownloadManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private onlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

.field private skinLoadController:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

.field private sum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onSkinUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->loadAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->loadSkins(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    return-object p1
.end method

.method private createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 5

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 235
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 241
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 246
    new-instance v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    const-string v4, "temp"

    invoke-direct {v1, p1, v3, v2, v4}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :cond_2
    return-object v0
.end method

.method private deleteOldFile()V
    .locals 10

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getSkins()Ljava/util/Vector;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 206
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 207
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 208
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 215
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 217
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v5, p0, v2

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 220
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 226
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private loadAll(Ljava/lang/String;)V
    .locals 2

    .line 106
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    new-instance v1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->achievementGetPointManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    .line 118
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->load(Ljava/lang/String;)V

    return-void
.end method

.method private loadSkins(Ljava/lang/String;I)V
    .locals 2

    .line 122
    const-string v0, "SkinLoadManager"

    const-string v1, "loadAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->mediaDownloadManagers:Ljava/util/List;

    .line 125
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->skinLoadController:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    .line 179
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->maxRetryCount:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    .line 182
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->skinLoadController:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;->load(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    return-void
.end method

.method private onSkinUpdate()V
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSkinUpdate, sum = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1600(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1700(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->deleteOldFile()V

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onlineBean:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->updateSkins(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)V

    .line 192
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1800(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$2000(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$2002(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->achievementGetPointManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->cancel()V

    .line 282
    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->achievementGetPointManager:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    .line 284
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->skinLoadController:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;->cancel()V

    .line 286
    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->skinLoadController:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    .line 288
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->mediaDownloadManagers:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 290
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    goto :goto_0

    .line 292
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public onDownloadFailed()V
    .locals 2

    .line 270
    const-string v0, "SkinLoadManager"

    const-string v1, "downloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 273
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->cancel()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 4

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 262
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 264
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 265
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->onSkinUpdate()V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->maxRetryCount:Ljava/lang/Integer;

    return-void
.end method
