.class public Lcn/nubia/redmagickyi/achievement/AchievementFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "AchievementFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;,
        Lcn/nubia/redmagickyi/achievement/AchievementFragment$OnAchievementOpListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ACHIEVEMENT_TASK:Ljava/lang/String; = "task"

.field public static final BUNDLE_KEY_FRAME_FOREGROUND:Ljava/lang/String; = "frame_foreground"

.field public static final BUNDLE_KEY_FROM_MAIN:Ljava/lang/String; = "from_main"

.field public static final BUNDLE_KEY_MODEL_NAME:Ljava/lang/String; = "model_name"

.field private static final TAG:Ljava/lang/String; = "AchievementFragment"


# instance fields
.field private achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;

.field private barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private isFromMain:Z

.field private isItemClicked:Z

.field private lastUserName:Ljava/lang/String;

.field private layoutTitle:Landroid/view/View;

.field private mAchievementBarDialog:Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;

.field private mAdapter:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTvAchievementBadgeCount:Landroid/widget/TextView;

.field private mTvAchievementPoint:Landroid/widget/TextView;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Lcn/nubia/redmagickyi/achievement/AchievementFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isItemClicked:Z

    .line 68
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isFromMain:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->layoutTitle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isItemClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->showDetailFragment(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    return-void
.end method

.method private animRootView(Z)V
    .locals 5

    .line 217
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isFromMain:Z

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "always_visible"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 219
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 220
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x8

    .line 222
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 225
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 227
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 232
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 233
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    if-eq v3, v4, :cond_2

    .line 235
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initData()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_main"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isFromMain:Z

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "model_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateAccountInfo(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateUI()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_name:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->layoutTitle:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 104
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement_badge_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementBadgeCount:Landroid/widget/TextView;

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view_achievement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 109
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 111
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 113
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/achievement/AchievementFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$1;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-nez p1, :cond_2

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_51_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_51_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 139
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 140
    new-instance p1, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAchievementBarDialog:Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;

    return-void
.end method

.method private performNetwork(I)V
    .locals 1

    .line 265
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 266
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->from(Landroid/content/Context;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->init()V

    .line 269
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->from(Landroid/content/Context;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->performSpecificResource(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;->setReceiveTask(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->receiveAchievement(Landroid/content/Context;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->showBarFragment(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isItemClicked:Z

    :goto_0
    return-void
.end method

.method private registAchievementNetworkCallback()V
    .locals 1

    .line 359
    const-class v0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->achievementNetworkCallback:Lcn/nubia/redmagickyi/achievement/AchievementFragment$AchievementNetworkCallback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;)V

    return-void
.end method

.method private rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 1

    .line 342
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 343
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/4 v0, 0x0

    .line 344
    invoke-static {p2, p0, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 345
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 346
    invoke-static {p1, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 347
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p4

    .line 348
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p2, p3

    .line 350
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 351
    invoke-virtual {v0, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 352
    invoke-virtual {p4, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p0
.end method

.method private showBarFragment(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    .line 304
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    const-string v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAchievementBarDialog:Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private showDetailFragment(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
    .locals 4

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    .line 313
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    const-string v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 315
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 316
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 317
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x5

    const/high16 v3, 0x3e000000    # 0.125f

    invoke-direct {p0, p1, v1, v2, v3}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "frame_foreground"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->layoutTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const-class v1, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;

    new-instance v2, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V

    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method private unregistAchievementNetworkCallback()V
    .locals 0

    .line 363
    const-class p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onAchievementItemClick(Landroid/view/View;I)V
    .locals 0

    .line 258
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isItemClicked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->isItemClicked:Z

    .line 260
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->performNetwork(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 280
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    new-instance p1, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_achievemt_bar_fragment:I

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->barChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    .line 80
    new-instance p1, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_achievemt_detail_fragment:I

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-void
.end method

.method public onBackPress()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->detailChildFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->onHideFragment()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 85
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_achievement:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->initView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->initData()V

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->registAchievementNetworkCallback()V

    const/4 p2, 0x1

    .line 89
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->animRootView(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onDestroyView()V

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->unregistAchievementNetworkCallback()V

    return-void
.end method

.method public onHideFragment()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->animRootView(Z)V

    return-void
.end method

.method public updateAccountInfo(Ljava/lang/String;)V
    .locals 3

    .line 151
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getShowName()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 158
    sget-object p1, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->TAG:Ljava/lang/String;

    const-string v0, "account already logout"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->onBackPress()Z

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->achievement_acct_logout:I

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->lastUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    sget-object p1, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->TAG:Ljava/lang/String;

    const-string v0, "account already changed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->onBackPress()Z

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->achievement_acct_changed:I

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_1

    .line 167
    :cond_2
    sget-object v1, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->TAG:Ljava/lang/String;

    const-string v2, "account is login now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->lastUserName:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "model_name"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateUI()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->achievement_point:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v0

    .line 176
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    filled-new-array {v1, v0}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 179
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int/2addr v1, v0

    .line 181
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x28

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    :goto_0
    const-wide/16 v4, 0x64

    .line 189
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 190
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    new-instance v0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->achievement_point:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryBadgeCount()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mTvAchievementBadgeCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->achievement_obtain_badge:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAdapter:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievements()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAdapter:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAdapter:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->setAchievementItemOnclick(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;)V

    goto :goto_2

    .line 211
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->setData(Ljava/util/List;)V

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->mAdapter:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method
