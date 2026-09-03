.class Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;
.super Landroid/os/Handler;
.source "BaseVideoWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

.field final synthetic val$this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;Landroid/os/Looper;Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    iput-object p3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->val$this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 328
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_2

    .line 330
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V

    goto :goto_1

    .line 332
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 321
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 322
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 323
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 314
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 315
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$100(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 316
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$1;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$200(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V

    :cond_5
    :goto_1
    return-void
.end method
