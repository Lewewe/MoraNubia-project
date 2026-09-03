.class Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;
.super Ljava/lang/Object;
.source "TextureViewPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyTextureCallback"
.end annotation


# instance fields
.field private isCreated:Z

.field private surface:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
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

    .line 334
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    .line 335
    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    return-void
.end method

.method private getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;
    .locals 1

    if-nez p2, :cond_0

    .line 339
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 340
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 342
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method private surfaceChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->isCreated:Z

    .line 372
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Background:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->drawBackground()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {v0, p1, p0, p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V

    return-void
.end method

.method private surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->isCreated:Z

    .line 367
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v1, v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {v1, p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    return-void
.end method

.method private surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->isCreated:Z

    .line 381
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v1, v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->getSurface(Landroid/graphics/SurfaceTexture;Z)Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceType:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-interface {v1, p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->surfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public drawBackground()V
    .locals 4

    .line 385
    const-string v0, "drawBackground"

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->isCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 392
    :try_start_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 393
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v2, v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :try_start_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 395
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    :try_start_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surface:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 398
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 401
    :catch_1
    const-string p0, "drawBackground failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->surfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
