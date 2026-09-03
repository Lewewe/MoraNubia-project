.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseWallPaperHubStaticsPreviewAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$CheckPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemPosition:I

.field private mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;Landroid/view/View;)V
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

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->ll_media_controller:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->setItemPosition(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    return-object p0
.end method

.method private setItemPosition(I)V
    .locals 1

    .line 146
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;)V

    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 0

    .line 115
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method public loadImageResource()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileSize()J

    move-result-wide v3

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 124
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->checkFirstTimePlay(Ljava/lang/String;JLjava/lang/String;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$CheckPlayCallback;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    if-nez v0, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->onEnablePlay()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEnablePlay()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->getCoverView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v0, v1, v3, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->updateLoadingUI(Z)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->mediaController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->updateLoadingUI(Z)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    if-nez v0, :cond_2

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->itemPosition:I

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;I)V

    :cond_2
    return-void
.end method
