.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$DefaultMediaPlayerControl;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_LOADING_UI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private isShowLoading:Z

.field private ivCover:Landroid/widget/ImageView;

.field private layoutCover:Landroid/view/View;

.field private loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

.field private mHandler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;

.field private mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$DefaultMediaPlayerControl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$DefaultMediaPlayerControl;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;

    .line 28
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;)Lcn/nubia/redmagickyi/view/LoadingView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    return-object p0
.end method

.method private updateLoadingUI(ZZ)V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->isShowLoading:Z

    if-eq v0, p1, :cond_1

    .line 136
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->isShowLoading:Z

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 139
    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mHandler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x3e8

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_loading:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/LoadingView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    .line 50
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_cover:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->layoutCover:Landroid/view/View;

    .line 51
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_cover:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 100
    const-string v0, "MediaController"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onPrepare()V
    .locals 2

    .line 71
    const-string v0, "MediaController"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onRenderingStart()V
    .locals 2

    .line 89
    const-string v0, "MediaController"

    const-string v1, "onRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->layoutCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onReset()V
    .locals 2

    .line 77
    const-string v0, "MediaController"

    const-string v1, "onReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->layoutCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    const-string v0, "MediaController"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onReset()V

    return-void
.end method

.method public onViewHolderAttachedFromWindow()V
    .locals 2

    .line 60
    const-string v0, "MediaController"

    const-string v1, "onViewAttachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;->loadThumbnail(Landroid/widget/ImageView;)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onReset()V

    return-void
.end method

.method public onViewHolderDetachedFromWindow()V
    .locals 2

    .line 66
    const-string v0, "MediaController"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->updateLoadingUI(ZZ)V

    return-void
.end method

.method public setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;

    return-void
.end method
