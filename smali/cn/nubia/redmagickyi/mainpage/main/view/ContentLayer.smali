.class public Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;
.super Ljava/lang/Object;
.source "ContentLayer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;


# instance fields
.field private childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private contentLayout:Landroid/view/View;

.field private coverFrontLayout:Landroid/view/View;

.field private fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

.field private parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    .line 35
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    .line 36
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;-><init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Landroid/app/Activity;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private hideTabBadge(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->removeBadge()V

    :cond_0
    return-void
.end method

.method public static release()V
    .locals 0

    .line 181
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->release()V

    return-void
.end method

.method private showTabBadge(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    .line 114
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFFF7373:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f3_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffset(I)V

    .line 116
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffset(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-object p0
.end method

.method public initView()V
    .locals 6

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->contentLayout:Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_cover_fragment:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->coverFrontLayout:Landroid/view/View;

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->contentLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->contentLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->coverFrontLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    aget v2, v0, v2

    aget v0, v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->coverFrontLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 90
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tablayout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 91
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$3;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public onBackPress()Z
    .locals 6

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    .line 132
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onBackPress()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public onMainFragmentResume()V
    .locals 4

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 151
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onMainFragmentResume()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 174
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performRecreate()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->fragmentCreator:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 142
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->recreate()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->performRecreate()V

    return-void
.end method

.method public shouldHideBadge(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->hideTabBadge(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public shouldShowBadge(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->showTabBadge(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
