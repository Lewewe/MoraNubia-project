.class public Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "NoticeListLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# static fields
.field private static final IMAGE_DIR_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NoticeListLoadManager"

.field private static final THUMB_DIR_PATH:Ljava/lang/String;


# instance fields
.field private mediaDownloadManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private noticeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;"
        }
    .end annotation
.end field

.field private noticeListLoadControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;",
            ">;"
        }
    .end annotation
.end field

.field private sum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->THUMB_DIR_PATH:Ljava/lang/String;

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->IMAGE_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->THUMB_DIR_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->createDownloader(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->mediaDownloadManagers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->IMAGE_DIR_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->onNoticeListUpdate()V

    return-void
.end method

.method private createDownloader(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 1

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 178
    new-instance p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private onNoticeListUpdate()V
    .locals 9

    .line 132
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->isCanceled:Z

    .line 133
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->isCanceled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_4

    .line 137
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/NoticeManager;->queryAllNotice()Ljava/util/List;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 141
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 143
    iget-object v5, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 144
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v7

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 146
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 153
    :cond_2
    sget-object v3, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-virtual {v3, v4, v2, v1}, Lcn/nubia/redmagickyi/database/NoticeManager;->batchUpdateNotice(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 154
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/NoticeManager;->checkAvailable()V

    .line 155
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/NoticeManager;->queryAllNotice()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 158
    :goto_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 159
    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 160
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getThumbPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 161
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getImagePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_3
    sget-object v3, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->THUMB_DIR_PATH:Ljava/lang/String;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->IMAGE_DIR_PATH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xbb8

    .line 167
    iput v2, v1, Landroid/os/Message;->what:I

    .line 168
    invoke-static {v1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    .line 171
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->isCanceled:Z

    if-eq v0, v1, :cond_5

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->cancel()V

    :cond_5
    return-void
.end method

.method private updateNoticeList(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeListLoadControllers:Ljava/util/List;

    new-instance v1, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;

    invoke-direct {v1, p0, p1, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;II)V

    .line 128
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager$1;->load()Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;

    move-result-object p0

    .line 69
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeListLoadControllers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;

    .line 55
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/controller/BaseNoticeListLoadController;->cancel()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->mediaDownloadManagers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 60
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    goto :goto_1

    .line 63
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/NoticeManager;->deleteAllNotice()V

    const/16 p0, 0xbb8

    .line 64
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->removeMessages(I)V

    return-void
.end method

.method public load()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->sum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->noticeListLoadControllers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->mediaDownloadManagers:Ljava/util/List;

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->updateNoticeList(I)V

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->updateNoticeList(I)V

    return-void
.end method

.method public onDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/NoticeListLoadManager;->onNoticeListUpdate()V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    return-void
.end method
