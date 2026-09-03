.class Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;
.super Ljava/lang/Object;
.source "LiveCalenderLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveCalenderLoader"
.end annotation


# instance fields
.field private final IMAGE_DIR_PATH:Ljava/lang/String;

.field private liveCalenderLoadController:Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

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

.field private netTimeLoadController:Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;

.field private onlineBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

.field private sum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/16 v0, 0xa

    aget-object p1, p1, v0

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    .line 120
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onlineBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    return-object p0
.end method

.method static synthetic access$1602(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onlineBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    return-object p1
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onLiveCalenderUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll(Ljava/util/Date;)V

    return-void
.end method

.method private convertToGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 353
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    mul-int v10, p0, v8

    .line 356
    new-array v11, v10, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, p0

    move v6, p0

    move v7, v8

    .line 357
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v10, :cond_0

    .line 361
    aget v0, v11, p1

    .line 362
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 363
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 364
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 365
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    int-to-double v6, v2

    mul-double/2addr v6, v4

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    int-to-double v2, v3

    mul-double/2addr v2, v4

    add-double/2addr v6, v2

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v4, v0

    mul-double/2addr v4, v2

    add-double/2addr v6, v4

    double-to-int v0, v6

    .line 371
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v11, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, v11

    move v3, p0

    move v6, p0

    move v7, v8

    .line 375
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method

.method private createDownloader(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 5

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->mediaDownloadManagers:Ljava/util/List;

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

    .line 290
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 296
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 301
    new-instance v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    const-string v4, "temp"

    invoke-direct {v1, p1, v3, v2, v4}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :cond_2
    return-object v0
.end method

.method private deleteOldFile()V
    .locals 10

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onlineBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getLiveActivities()Ljava/util/List;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 257
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 258
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 259
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImagePath()Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImagePath()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 265
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 270
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 272
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_6

    aget-object v5, p0, v2

    .line 274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 275
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 280
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private loadAll()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadOnlineDate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->netTimeLoadController:Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;

    .line 158
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;->load()Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;

    return-void
.end method

.method private loadAll(Ljava/util/Date;)V
    .locals 2

    .line 163
    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getMondayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 164
    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getSundayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 165
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method private loadAll(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll, from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->mediaDownloadManagers:Ljava/util/List;

    .line 172
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->liveCalenderLoadController:Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    .line 230
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->maxRetryCount:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    .line 233
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->liveCalenderLoadController:Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    invoke-virtual {p0, p2, p3}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->setTime(Ljava/util/Date;Ljava/util/Date;)Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->load()Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    return-void
.end method

.method private onLiveCalenderUpdate()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLiveCalenderUpdate, sum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v0

    .line 239
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_0

    .line 241
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->deleteOldFile()V

    .line 242
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onlineBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->updateLiveActivities(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)V

    .line 243
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 381
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2702(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->liveCalenderLoadController:Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->cancel()V

    .line 385
    iput-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->liveCalenderLoadController:Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    .line 387
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->mediaDownloadManagers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 389
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    goto :goto_0

    .line 391
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->mediaDownloadManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public onDownloadFailed()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 341
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->cancel()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 6

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-ltz v1, :cond_2

    .line 319
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->convertToGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_gray"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcn/nubia/redmagickyi/util/BitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 332
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 333
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->onLiveCalenderUpdate()V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->maxRetryCount:Ljava/lang/Integer;

    return-void
.end method
