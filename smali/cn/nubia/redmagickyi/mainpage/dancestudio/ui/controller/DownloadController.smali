.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;
.super Landroid/widget/FrameLayout;
.source "DownloadController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadController"

.field private static final VIDEO_DIR_PATH:Ljava/lang/String;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private layoutController:Landroid/view/View;

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

.field private onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;

.field private pbDownloading:Landroid/widget/ProgressBar;

.field private tvProgress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->VIDEO_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    .line 39
    const-string v0, "DownloadController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    return-object p0
.end method

.method private cancelDownload()V
    .locals 1

    .line 123
    const-string v0, "cancelDownload"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->cancel()V

    :cond_0
    return-void
.end method

.method private checkStartDownload(Ljava/lang/String;J)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;->shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

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

    .line 216
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->VIDEO_DIR_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadCacheSize()J
    .locals 2

    .line 212
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->VIDEO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private initUI()V
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init UI, isOrientationLandScape = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->isOrientationLandScape()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->btnCancel:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_right_landscape:I

    goto :goto_0

    :cond_0
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_right_portait:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 97
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->layoutController:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->isOrientationLandScape()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_left_landscape:I

    goto :goto_1

    :cond_2
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_left_portait:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->isOrientationLandScape()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_right_landscape:I

    goto :goto_2

    :cond_3
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_download_controller_padding_right_portait:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->layoutController:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->layoutController:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v2, v0, v3, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    return-void
.end method

.method private setProgress(IZ)V
    .locals 3

    .line 114
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p2, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 117
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->tvProgress:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

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

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManagers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    sget-object v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->VIDEO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v2, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public isOrientationLandScape()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 84
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 85
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download success "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    .line 196
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setProgress(IZ)V

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 202
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object p1, v2

    .line 204
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;->onDownloadSuccess(Ljava/io/File;)V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    const/16 p1, 0x3e7

    .line 190
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setProgress(IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->btnCancel:Landroid/widget/Button;

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_controller:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->layoutController:Landroid/view/View;

    .line 64
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->tvProgress:Landroid/widget/TextView;

    .line 65
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_downloading:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->pbDownloading:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 67
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->initUI()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->cancelDownload()V

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;

    if-eqz p0, :cond_1

    .line 76
    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;->onDownloadCancel()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->initUI()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;)Z
    .locals 5

    .line 133
    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onDownloadCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;

    .line 134
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->cancelDownload()V

    .line 135
    new-instance p5, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->VIDEO_DIR_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p5, p1, v0, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 136
    new-instance p5, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 138
    const-string p1, "video already downloaded"

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p5}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onDownloadSuccess(Ljava/io/File;)V

    return v2

    .line 143
    :cond_0
    new-instance p5, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    const-string v1, "temp"

    invoke-direct {p5, p1, v0, p2, v1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->mediaDownloadManager:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    .line 145
    invoke-virtual {p5}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getPreDownloadSize()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v0

    .line 146
    div-long/2addr v3, p3

    long-to-float p2, v3

    float-to-int p2, p2

    const/16 p5, 0x3e7

    invoke-static {p5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 147
    invoke-direct {p0, p2, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setProgress(IZ)V

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "startDownload, preDownloadSize = "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, ", totalSize = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->Log(Ljava/lang/String;)V

    sub-long/2addr p3, v0

    .line 150
    invoke-direct {p0, p1, p3, p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->checkStartDownload(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method
