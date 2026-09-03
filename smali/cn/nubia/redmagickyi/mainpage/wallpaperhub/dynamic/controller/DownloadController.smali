.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;
.super Landroid/widget/FrameLayout;
.source "DownloadController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadController"

.field private static final WALLPAPER_DIR_PATH:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

.field private mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

.field private pbDownloading:Landroid/widget/ProgressBar;

.field private targetFile:Ljava/io/File;

.field private timer:Lcn/nubia/redmagickyi/util/ZTETimer;

.field private tvProgress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->WALLPAPER_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    .line 42
    const-string v0, "DownloadController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->targetFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;IZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setProgress(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p0
.end method

.method private cancelDownload()V
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelDownload"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->targetFile:Ljava/io/File;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->targetFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->Log(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 109
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private checkStartDownload(Ljava/lang/String;J)Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;->shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return p2
.end method

.method public static clearDownloadCache()V
    .locals 2

    .line 245
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->WALLPAPER_DIR_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private copyToTargetFile(Ljava/io/File;)V
    .locals 2

    .line 203
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->timer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 204
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static getDownloadCacheSize()J
    .locals 2

    .line 241
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->WALLPAPER_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private setProgress(IZ)V
    .locals 3

    .line 93
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 96
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->tvProgress:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_preview_download_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double p0, p1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    sget-object v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->WALLPAPER_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v2, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public onBackPressed()V
    .locals 1

    .line 81
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->Log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download success "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->Log(Ljava/lang/String;)V

    const/16 v0, 0x3e7

    const/4 v1, 0x1

    .line 182
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setProgress(IZ)V

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 188
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object p1, v3

    .line 190
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->targetFile:Ljava/io/File;

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    .line 191
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setProgress(IZ)V

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;->onDownloadSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->copyToTargetFile(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    const/16 p1, 0x3e7

    .line 176
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setProgress(IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 64
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->tvProgress:Landroid/widget/TextView;

    .line 65
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_downloading:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    const/16 p0, 0x3e8

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->cancelDownload()V

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;->onDownloadCancel()V

    :cond_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;)Z
    .locals 7

    .line 118
    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->targetFile:Ljava/io/File;

    .line 119
    iput-object p6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->cancelDownload()V

    .line 121
    new-instance p6, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->WALLPAPER_DIR_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p6, p1, v0, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 122
    new-instance p6, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ", file: "

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "wallpaper already downloaded"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->Log(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->onDownloadSuccess(Ljava/io/File;)V

    return v4

    .line 129
    :cond_1
    new-instance p6, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    const-string v1, "temp"

    invoke-direct {p6, p1, v0, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 131
    invoke-virtual {p6}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getPreDownloadSize()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    .line 132
    div-long/2addr v5, p3

    long-to-float p2, v5

    float-to-int p2, p2

    const/16 p6, 0x3e7

    invoke-static {p6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 133
    invoke-direct {p0, p2, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->setProgress(IZ)V

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "startDownload, preDownloadSize = "

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p6, ", totalSize = "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p5, :cond_2

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->Log(Ljava/lang/String;)V

    sub-long/2addr p3, v0

    .line 136
    invoke-direct {p0, p1, p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->checkStartDownload(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method
