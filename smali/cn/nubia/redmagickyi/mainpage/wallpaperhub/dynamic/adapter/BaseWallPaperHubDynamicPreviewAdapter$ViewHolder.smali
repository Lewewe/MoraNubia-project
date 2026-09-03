.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseWallPaperHubDynamicPreviewAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemPosition:I

.field private mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

.field private playingPosition:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

.field private videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    .line 112
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 107
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    .line 113
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->ll_media_controller:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    .line 114
    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->obtain(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    .line 115
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->setItemPosition(I)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->resetPlayer()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I
    .locals 0

    .line 105
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z
    .locals 0

    .line 105
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->isStartedPlay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I
    .locals 0

    .line 105
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method private isStartedPlay()Z
    .locals 1

    .line 123
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetPlayer()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->reset()V

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setOnStateChangeListener(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;)V

    return-void
.end method

.method private setItemPosition(I)V
    .locals 5

    .line 225
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v4, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setUrl(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->isHasVoice()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setHaveVoice(Z)V

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$MediaPlayerControl;)V

    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 0

    .line 119
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method public onEnablePlay()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setCurrent(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V

    .line 140
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    .line 141
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->resetPlayer()V

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->prepare()V

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onPrepare()V

    return-void
.end method

.method public onGainFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public replay()V
    .locals 4

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->playingPosition:I

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setUrl(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->exchangeProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->resetPlayer()V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->startPlay()V

    return-void
.end method

.method public startPlay()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileSize()J

    move-result-wide v2

    .line 151
    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v4, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->checkFirstTimePlay(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;)V

    return-void
.end method
