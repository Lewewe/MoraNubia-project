.class Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;
.super Ljava/lang/Object;
.source "BaseVideoWallpaperService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->superWallpaperReloadMp4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 418
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start duration:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-static {v3}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->access$000(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", videoWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", videoHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor$2;->this$2:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->this$1:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->changeVideoSize()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;Landroid/graphics/Rect;)V

    .line 421
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
