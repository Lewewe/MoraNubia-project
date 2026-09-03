.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "StaticsPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_DATA:Ljava/lang/String; = "data"

.field public static final BUNDLE_KEY_MARGIN_BOTTOM:Ljava/lang/String; = "margin_bottom"

.field public static final BUNDLE_KEY_MARGIN_TOP:Ljava/lang/String; = "margin_top"

.field public static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "StaticsPreviewActivity"

.field private static previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

.field private btnSetting:Landroid/widget/Button;

.field private container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

.field private downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

.field private ivExit:Landroid/view/View;

.field private layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

.field private listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

.field private networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

.field private rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

.field private wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    .line 60
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    return-object p0
.end method

.method static synthetic access$100()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;
    .locals 1

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Landroid/widget/Button;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->btnSetting:Landroid/widget/Button;

    return-object p0
.end method

.method private adjustNavigationMargin(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "margin_bottom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->checkNubiaHasNavigarionBar(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getNavigationHeight(Landroid/content/Context;)I

    move-result v2

    .line 196
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->wallpaperhub_preview_commit_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private initData()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 80
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->ivExit:Landroid/view/View;

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->btnSetting:Landroid/widget/Button;

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->btnSetting:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    .line 88
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    .line 89
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->setOnDragListener(Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getRecyclerView()Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setItemViewCacheSize(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->getLayoutManager()Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    .line 93
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$1;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    .line 140
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setOnPageChangeListener(Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;)V

    return-void
.end method

.method public static setPreviewCallback(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 0

    .line 157
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

    return-void
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 3

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentPosition()I

    move-result v1

    .line 216
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 218
    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 220
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_enter:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->overridePendingTransition(II)V

    const/4 p0, 0x0

    .line 221
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->onBackPressed()V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 163
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    if-ne p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 165
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    if-ne p1, v0, :cond_1

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getWallpaperId()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->startDownload(ILjava/lang/String;Ljava/lang/String;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 68
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->transparentNavBar(Landroid/app/Activity;)V

    .line 69
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_wallpaperhub_preview_statics:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->initView()V

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onDragBottom()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 244
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_no_more_content:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_1
    return-void
.end method

.method public onDragTop()V
    .locals 0

    .line 231
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->notifyDataSetChanged()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->btnSetting:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentPosition()I

    move-result v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
