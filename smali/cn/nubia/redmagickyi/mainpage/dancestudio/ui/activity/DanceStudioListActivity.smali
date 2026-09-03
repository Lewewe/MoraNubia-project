.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "DanceStudioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer$OnDragListener;
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;
    }
.end annotation


# static fields
.field private static final ENTER_EXIT_DURATION:I = 0x12c

.field private static backgroundBytes:[B


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

.field private enterAnimator:Landroid/animation/ValueAnimator;

.field private exitAnimator:Landroid/animation/ValueAnimator;

.field private ivClose:Landroid/widget/ImageView;

.field private layoutRoot:Landroid/view/View;

.field private rvList:Landroidx/recyclerview/widget/RecyclerView;

.field private targetPosition:I

.field private videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

.field private zipBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->layoutRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->zipBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->targetPosition:I

    return p0
.end method

.method static synthetic access$801(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$901(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method public static initBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 233
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    sput-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->backgroundBytes:[B

    return-void
.end method

.method private initData()V
    .locals 2

    .line 135
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    .line 136
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->updateData(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$4;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)V

    return-void
.end method

.method private initListUI()V
    .locals 3

    .line 104
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    .line 105
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->setOnDragListener(Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer$OnDragListener;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->getRecyclerView()Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$2;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$3;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 8

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->layoutRoot:Landroid/view/View;

    .line 64
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->ivClose:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->initListUI()V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->targetPosition:I

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->backgroundBytes:[B

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3e000000    # 0.125f

    .line 70
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->rsZip(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->zipBitmap:Landroid/graphics/Bitmap;

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 72
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLowEndMobile(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0xa

    const-wide/16 v3, 0x12c

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->layoutRoot:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->zipBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, v7, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    :cond_0
    filled-new-array {v2, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    :goto_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 96
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomAlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 98
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->setVisibility(I)V

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private isOrientationLandScape()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->overridePendingTransition(II)V

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->exitAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 180
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLowEndMobile(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 181
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->exitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->exitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;

    invoke-direct {v4, p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;Z)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->exitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 206
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->ivClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomAlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 213
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->container:Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/view/NestContainer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_dance_studio_list:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->initData()V

    return-void
.end method

.method public onDragBottom()V
    .locals 1

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;Z)V

    return-void
.end method

.method public onDragTop()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 171
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 172
    const-string v0, "position"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 173
    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->onBackPressed()V

    return-void
.end method

.method public preloadMore()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->videoListLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;Z)V

    return-void
.end method
