.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "DynamicPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_DATA:Ljava/lang/String; = "data"

.field public static final BUNDLE_KEY_MARGIN_BOTTOM:Ljava/lang/String; = "margin_bottom"

.field public static final BUNDLE_KEY_MARGIN_TOP:Ljava/lang/String; = "margin_top"

.field public static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final DANCE_STUDIO_SET_WALLPAPER_REQ:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DynamicPreviewActivity"

.field private static previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

.field private btnSetting:Landroid/widget/Button;

.field private container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

.field private downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

.field private ivExit:Landroid/view/View;

.field private layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

.field private listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

.field private networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

.field private rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

.field private swMute:Landroid/widget/Switch;

.field private wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 60
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    .line 61
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    return-object p0
.end method

.method static synthetic access$100()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;
    .locals 1

    .line 44
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->ivExit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Landroid/widget/Button;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->btnSetting:Landroid/widget/Button;

    return-object p0
.end method

.method private adjustNavigationMargin(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "margin_bottom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 229
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->checkNubiaHasNavigarionBar(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getNavigationHeight(Landroid/content/Context;)I

    move-result v2

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 238
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->wallpaperhub_preview_commit_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 156
    const-string v0, "currentSetWallPaperClass"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$602(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;Ljava/lang/Class;)Ljava/lang/Class;

    .line 161
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->networkPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->ivExit:Landroid/view/View;

    .line 84
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->switch_preview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->swMute:Landroid/widget/Switch;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->btnSetting:Landroid/widget/Button;

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->btnSetting:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    .line 92
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->setOnDragListener(Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->container:Lcn/nubia/redmagickyi/view/pageslider/PageContainer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getRecyclerView()Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setItemViewCacheSize(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->getLayoutManager()Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    .line 142
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->rvMain:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setOnPageChangeListener(Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;)V

    return-void
.end method

.method public static setPreviewCallback(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 0

    .line 165
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

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

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentPosition()I

    move-result v1

    .line 257
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 259
    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 260
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 261
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_enter:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->overridePendingTransition(II)V

    const/4 p0, 0x0

    .line 262
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->recycle(Z)V

    const/4 p0, 0x0

    .line 263
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->previewCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->onBackPressed()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->swMute:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    .line 184
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/util/Utils;->setWallPaperHubDynamicPreviewMute(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 171
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 173
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    if-ne p1, v0, :cond_1

    .line 174
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    if-eqz p1, :cond_1

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getWallpaperId()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->startDownload(ILjava/lang/String;Ljava/lang/String;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 69
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->transparentNavBar(Landroid/app/Activity;)V

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_wallpaperhub_preview_dynamic:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->initView()V

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->initData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDragBottom()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->listLoader:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 281
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

    .line 268
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->isInDownloadMode()Z

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->findCurrent()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->onDetachFromWindow()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 200
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->findCurrent()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->downloadPanel:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->checkOnUrlChanged(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V

    .line 203
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->onAttachToWindow()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->btnSetting:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adjustNavigationMargin(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->swMute:Landroid/widget/Switch;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isWallPaperHubDynamicPreviewMute(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getCurrentWallPapers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_set_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$602(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;Ljava/lang/Class;)Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getCurrentPosition()I

    move-result v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    if-nez p1, :cond_0

    .line 219
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 221
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->wallPaperManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;)Ljava/lang/Class;

    move-result-object p0

    const-string p2, "currentSetWallPaperClass"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method
