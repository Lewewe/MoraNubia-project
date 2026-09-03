.class public abstract Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;
.super Ljava/lang/Object;
.source "ProxyDigitalHumanService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/proxy/IProxyDigitalHumanService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;,
        Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private playerCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

.field private proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

.field private savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

.field private unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->playerCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    .line 36
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    .line 37
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    .line 38
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;->SurfaceView:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->initPlayer(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    return-object p0
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->setBindedView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 181
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$2;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Ljava/lang/Integer;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->switchScene(I)V

    :cond_0
    return-void
.end method

.method protected getAvatarHeight()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 396
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->getAvatarHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getAvatarLayoutParams(FF)[F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 404
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->getAvatarLayoutParams(FF)[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAvatarWidth()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 388
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->getAvatarWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHumanScale()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 478
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->getHumanScaleV2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getScene()Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 328
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->getScene()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
.end method

.method public hide()V
    .locals 1

    .line 262
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$7;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$7;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    .line 272
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$8;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$8;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Z)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initPlayer(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;)V
    .locals 1

    .line 167
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;->SurfaceView:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;

    if-ne p1, v0, :cond_1

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    if-nez p1, :cond_3

    .line 169
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->playerCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;->TextureView:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Type;

    if-ne p1, v0, :cond_3

    .line 172
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    if-nez p1, :cond_3

    .line 173
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->playerCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->unityPlayer:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    :cond_3
    :goto_0
    return-void
.end method

.method protected isHumanInited()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->isHumanInited()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isHumanRendered()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 380
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->isHumanRendered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onSurfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 344
    invoke-interface {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->onSurfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V

    :cond_0
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x14

    .line 336
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->setSDKVersionCode(I)V

    .line 337
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->onSurfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    :cond_0
    return-void
.end method

.method protected onSurfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->onSurfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    :cond_0
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 358
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public pauseMotion()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 430
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->pauseMotion()V

    :cond_0
    return-void
.end method

.method public registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->setInnerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    .line 303
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    if-eqz p0, :cond_1

    .line 285
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->access$1000(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;)V

    :cond_1
    return-void
.end method

.method public restoreState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    .line 295
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->access$1200(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;)V

    return-void
.end method

.method public resumeMotion()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->resumeMotion()V

    :cond_0
    return-void
.end method

.method public saveState()V
    .locals 0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->access$1100(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->setBackgroundColor(I)I

    .line 235
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$5;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$5;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setHumanRendered()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 373
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->setHumanRendered()V

    :cond_0
    return-void
.end method

.method public setHumanRotation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 462
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->setHumanRotation(F)V

    :cond_0
    return-void
.end method

.method public setHumanScale(FFFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 470
    invoke-interface/range {v0 .. v5}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->setHumanScaleV2(FFFFF)V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->setZOrderOnTop(Z)Z

    .line 224
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$4;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$4;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Z)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 245
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$6;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 413
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startSpeak(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 446
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->startSpeak(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopMotion()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 438
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->stopMotion()V

    :cond_0
    return-void
.end method

.method public stopSpeak()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 454
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->stopSpeak()V

    :cond_0
    return-void
.end method

.method public supportedTouchEvent(Z)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->setSupportedTouchEvent(Ljava/lang/Boolean;)Z

    .line 213
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$3;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Z)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected switchScene(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->setScene(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->switchScene(I)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->savedState:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$SavedState;->unregisterCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->setInnerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    .line 312
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->getService()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->proxyDigitalHumanClientCallback:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;->unregisterCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    :cond_0
    return-void
.end method
