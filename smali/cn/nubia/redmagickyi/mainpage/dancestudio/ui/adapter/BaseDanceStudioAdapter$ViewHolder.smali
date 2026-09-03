.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseDanceStudioAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$CheckPlayCallback;
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemPosition:I

.field private mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

.field private playingPosition:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

.field private videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;Landroid/view/View;)V
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

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    .line 163
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 158
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

    .line 164
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->ll_media_controller:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    .line 165
    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->obtain(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    .line 166
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;ZZ)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->updateUIState(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)Z
    .locals 0

    .line 156
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->isStartedPlay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;
    .locals 0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;I)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->setItemPosition(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)I
    .locals 0

    .line 156
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;
    .locals 0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->resetPlayer()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)I
    .locals 0

    .line 156
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

    return p1
.end method

.method private isStartedPlay()Z
    .locals 1

    .line 178
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

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

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->reset()V

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setOnStateChangeListener(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;)V

    return-void
.end method

.method private setItemPosition(I)V
    .locals 10

    .line 285
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoMd5()Ljava/lang/String;

    move-result-object v6

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoSize()J

    move-result-wide v7

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v1, v5, v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setUrl(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    new-instance v9, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder$2;

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder$2;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v9}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;)V

    return-void
.end method

.method private updateUIState(ZZ)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateUIState(ZZ)V

    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 0

    .line 170
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method public onEnablePlay()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setCurrent(Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;)V

    .line 195
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->isStartedPlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

    .line 197
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->resetPlayer()V

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$PreloadManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$PreloadManager;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$PreloadManager;ILcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->prepare()V

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->onPrepare()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->start()Z

    :goto_0
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

    .line 183
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->playingPosition:I

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoMd5()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setUrl(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->videoPlayer:Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->exchangeProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->resetPlayer()V

    .line 189
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->startPlay()V

    return-void
.end method

.method public startPlay()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoMd5()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getVideoSize()J

    move-result-wide v2

    .line 210
    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v4, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->checkFirstTimePlay(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$CheckPlayCallback;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->isOrientationLandScape()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->updateUIState(ZZ)V

    return-void
.end method
