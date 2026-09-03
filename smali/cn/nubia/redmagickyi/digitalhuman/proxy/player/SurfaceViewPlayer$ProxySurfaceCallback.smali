.class Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceViewPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxySurfaceCallback"
.end annotation


# instance fields
.field private isCreated:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    return-void
.end method


# virtual methods
.method public drawBackground()V
    .locals 4

    .line 336
    const-string v0, "drawBackground"

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->isCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 343
    :try_start_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 344
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    iget-object v2, v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 346
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 348
    :goto_1
    :try_start_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 349
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 352
    :catch_1
    const-string p0, "drawBackground failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 319
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p2, 0x1

    .line 320
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->isCreated:Z

    .line 321
    sget-object p2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Background:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne p2, v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->drawBackground()V

    .line 324
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;)V

    .line 325
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    iget-object p2, p2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {p2, p1, p0, p3, p4}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 314
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 330
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->isCreated:Z

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    return-void
.end method
