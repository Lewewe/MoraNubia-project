.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "DanceStudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final DANCE_STUDIO_EDITOR_REQ:I = 0x3e9

.field private static final DANCE_STUDIO_LIST_REQ:I = 0x3e8

.field private static final DANCE_STUDIO_SET_WALLPAPER_REQ:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "DanceStudioActivity"

.field private static previewCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

.field private container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

.field private downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

.field private ivExit:Landroid/view/View;

.field private layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

.field private networkPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

.field private rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

.field private targetPosition:I

.field private videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

.field private wallPaperManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    .line 57
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->targetPosition:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->ivExit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300()Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;
    .locals 1

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->targetPosition:I

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->targetPosition:I

    return p1
.end method

.method private initData()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)V

    .line 195
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->targetPosition:I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    .line 78
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    .line 79
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->ivExit:Landroid/view/View;

    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    .line 83
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->setOnDragListener(Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getRecyclerView()Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setItemViewCacheSize(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->getLayoutManager()Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    .line 178
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->updateData(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$2;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setOnPageChangeListener(Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;)V

    return-void
.end method

.method public static setPreviewCallback(Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;)V
    .locals 0

    .line 64
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;

    return-void
.end method

.method private updateUIByOrientation(Landroid/content/res/Configuration;)V
    .locals 3

    .line 269
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->ivExit:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    goto :goto_1

    :cond_1
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 272
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->ivExit:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    if-eqz p0, :cond_2

    .line 274
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->updateUIByOrientation(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v0, -0x1

    .line 255
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->setResult(I)V

    .line 256
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 257
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_enter:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->overridePendingTransition(II)V

    const/4 p0, 0x0

    .line 258
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 209
    const-string v1, "position"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 210
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->scrollToPosition(I)V

    .line 214
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->onBackPressed()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->notifyCurrentPlayerDataSetChanged()V

    .line 221
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_dance_studio:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->initData()V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 263
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)V

    const/4 p0, 0x0

    .line 265
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->recycle(Z)V

    return-void
.end method

.method public onDragBottom()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;Z)V

    return-void
.end method

.method public onDragTop()V
    .locals 0

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->isInDownloadMode()Z

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 227
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->findCurrent()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->onDetachFromWindow()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->notifyCurrentPlayerDataSetChanged()V

    .line 237
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->findCurrent()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->checkOnUrlChanged(Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;)V

    .line 240
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->onAttachToWindow()V

    :cond_0
    return-void
.end method
