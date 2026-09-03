.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;
.super Ljava/lang/Object;
.source "AchievementLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AchievementLoader"
.end annotation


# instance fields
.field private final IMAGE_DIR_PATH:Ljava/lang/String;

.field private achievementLoadController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

.field private achievementReportController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

.field private loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

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

.field private onlineBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

.field private sum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    .line 117
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onlineBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    return-object p0
.end method

.method static synthetic access$1902(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onlineBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onAchievementUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;I)Z
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->isLoginTokenExpired(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loadAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->reportHonors(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V

    return-void
.end method

.method private createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 5

    .line 362
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->mediaDownloadManagers:Ljava/util/List;

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

    .line 363
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 369
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 373
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 374
    new-instance v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    const-string v4, "temp"

    invoke-direct {v1, p1, v3, v2, v4}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :cond_2
    return-object v0
.end method

.method private deleteOldFile()V
    .locals 10

    .line 324
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onlineBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 326
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 327
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 328
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementBackgroundCompletePath()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 330
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndonePath()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompletePath()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 338
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 343
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 345
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_7

    aget-object v5, p0, v2

    .line 347
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 348
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 353
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 354
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private isLoginTokenExpired(I)Z
    .locals 3

    const/16 v0, 0xfa3

    const/16 v1, 0x1771

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "perform updateLoginToken onSuccess"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_2

    .line 269
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->onAccountExpired()V

    .line 271
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v0, 0x1006

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 273
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private loadAll(Ljava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->mediaDownloadManagers:Ljava/util/List;

    .line 193
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementLoadController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    .line 260
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->maxRetryCount:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    .line 263
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementLoadController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->load(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    return-void
.end method

.method private onAchievementUpdate()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAchievementUpdate, sum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$3200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v0

    .line 308
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$3300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_0

    .line 310
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->deleteOldFile()V

    .line 311
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onlineBean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->updateAchievements(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V

    .line 312
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$3400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    :cond_1
    return-void
.end method

.method private reportHonors(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V
    .locals 8

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportHonors, size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;->getItem(I)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    move-result-object v0

    .line 140
    new-instance v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p3

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$1;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;ILcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementReportController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    .line 183
    iget-object p2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->maxRetryCount:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    .line 186
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementReportController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->report(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 406
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2902(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->cancel()V

    .line 410
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    .line 412
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementLoadController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;->cancel()V

    .line 414
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementLoadController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;

    .line 416
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementReportController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    if-eqz v0, :cond_3

    .line 417
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->cancel()V

    .line 418
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->achievementReportController:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    .line 420
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->mediaDownloadManagers:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 422
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    goto :goto_0

    .line 424
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public doLoad(Ljava/lang/String;)V
    .locals 4

    .line 128
    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->getTotaleData(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doLoad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->reportHonors(Ljava/lang/String;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean;I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loadAll(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 401
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 4

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 390
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 392
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 393
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->onAchievementUpdate()V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->maxRetryCount:Ljava/lang/Integer;

    return-void
.end method
