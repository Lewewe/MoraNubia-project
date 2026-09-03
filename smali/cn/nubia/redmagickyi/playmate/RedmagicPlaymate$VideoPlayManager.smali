.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayManager"
.end annotation


# instance fields
.field private mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

.field private resCode:I

.field private stateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->stateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->release()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;
    .locals 0

    .line 286
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;I)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->play(I)V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;Z)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->replay(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->initVideoPlayer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->onDetachFromWindow()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->onAttachToWindow()V

    return-void
.end method

.method private initVideoPlayer(Landroid/view/ViewGroup;)V
    .locals 2

    .line 291
    new-instance v0, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    .line 292
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    return-void
.end method

.method private onAttachToWindow()V
    .locals 0

    .line 426
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->onAttachToWindow()V

    :cond_0
    return-void
.end method

.method private onDetachFromWindow()V
    .locals 0

    .line 420
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->onDetachFromWindow()V

    :cond_0
    return-void
.end method

.method private play(I)V
    .locals 1

    const/4 v0, 0x1

    .line 300
    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->play(ZI)V

    return-void
.end method

.method private play(ZI)V
    .locals 1

    .line 304
    iput p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->resCode:I

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$1600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$1800(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$1900(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 311
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$2000(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;I)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 319
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setUrl(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$1900(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 324
    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isFileUri(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 325
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    goto :goto_0

    .line 327
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    :goto_0
    if-eqz p1, :cond_4

    .line 331
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->clearProgress()V

    .line 333
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->reset()V

    .line 334
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->stateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setOnStateChangeListener(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;)V

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->prepare()V

    return-void
.end method

.method private release()V
    .locals 0

    .line 339
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->mVideoPlayer:Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    if-nez p0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->release()V

    return-void
.end method

.method private replay(Z)V
    .locals 1

    .line 296
    iget v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->resCode:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->play(ZI)V

    return-void
.end method


# virtual methods
.method public onGainFocus()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    if-eqz v0, :cond_0

    .line 413
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onGainFocus()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocus()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onLossFocus()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onLossFocusTransient()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
