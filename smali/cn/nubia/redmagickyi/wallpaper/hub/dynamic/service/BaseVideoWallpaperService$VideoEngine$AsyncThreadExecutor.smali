.class Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;
.super Ljava/lang/Object;
.source "BaseVideoWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncThreadExecutor"
.end annotation


# static fields
.field private static final MSG_SURFACE_CHANGED:I = 0x1

.field private static final MSG_SURFACE_CREATED:I = 0x0

.field private static final MSG_SURFACE_DESTROYED:I = 0x2

.field private static final MSG_VISIBILITY_CHANGED:I = 0x3


# instance fields
.field private asyncThread:Landroid/os/HandlerThread;

.field private asyncThreadHandler:Landroid/os/Handler;

.field private mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BaseWallpaperService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 304
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 309
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;Landroid/os/Looper;Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 292
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->reloadMp4()V

    return-void
.end method

.method private reloadMp4()V
    .locals 0

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->superWallpaperReloadMp4()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 443
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private superWallpaperReloadMp4()V
    .locals 4

    .line 392
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getVideoFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    const-string v0, "WallpaperUtil"

    const-string v1, "filepath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->setIamgeWallpaper(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-static {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$300(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-static {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$400(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    new-instance v2, Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$402(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;Lcn/nubia/redmagickyi/util/CPUBoostManager;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    .line 402
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-static {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$400(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->requestCPUBoost(J)V

    .line 404
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 405
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 407
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->isVideoMute(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 411
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 414
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 425
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$3;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 431
    const-string p0, "BaseWallpaperService"

    const-string v0, "superWallpaper ReloadMp4"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getVideoSize()[I
    .locals 4

    const/4 v0, 0x2

    .line 380
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 382
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    aput v3, v0, v1

    .line 384
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->mMediaPlayer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0

    aput p0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public onSurfaceChanged()V
    .locals 1

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .line 353
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 365
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 366
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 373
    iput v1, v0, Landroid/os/Message;->what:I

    .line 374
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public shutdownNow()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 349
    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->asyncThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method
