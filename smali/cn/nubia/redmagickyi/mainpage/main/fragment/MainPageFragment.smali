.class public Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "MainPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUNDLE_KEY_IS_PARENT_MAINPAGE_ACTIVITY:Ljava/lang/String; = "BUNDLE_KEY_IS_PARENT_MAINPAGE_ACTIVITY"


# instance fields
.field private childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

.field private headerLayer:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

.field private isParentMainPageActivity:Z

.field private ivExit:Landroid/view/View;

.field private parentFragmentId:I

.field private parentFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private parentFragmentOpCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

.field private recreating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->recreating:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 65
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->ivExit:Landroid/view/View;

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->headerLayer:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    .line 68
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->initView()V

    .line 69
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    .line 70
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->initView()V

    return-void
.end method

.method public static release()V
    .locals 0

    .line 175
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->release()V

    return-void
.end method

.method public static showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 2

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->release()V

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    const-string v1, "BUNDLE_KEY_IS_PARENT_MAINPAGE_ACTIVITY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;

    invoke-direct {p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    const-class v1, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(ILjava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    iput-object p0, p2, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    .line 198
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    iput p1, p2, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentId:I

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentOpCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    return-void
.end method


# virtual methods
.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 4

    .line 83
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->isParentMainPageActivity:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createEnterAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 87
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 88
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0xfa

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 92
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 4

    .line 99
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->isParentMainPageActivity:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 102
    :cond_0
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 103
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 104
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 105
    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0xfa

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 108
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 49
    const-string p1, "BUNDLE_KEY_IS_PARENT_MAINPAGE_ACTIVITY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->isParentMainPageActivity:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_cover_fragment:I

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-void
.end method

.method public onBackPress()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->isParentMainPageActivity:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_1
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_exit:I

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->performRecreate()V

    :cond_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 55
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_mainpage:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onHideFragment()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->recreating:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 153
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->contentLayer:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->onMainFragmentResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onStop()V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->release()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public performRecreate()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->TAG:Ljava/lang/String;

    const-string v1, "recreate now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->recreating:Z

    .line 143
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentId:I

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->isParentMainPageActivity:Z

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->parentFragmentOpCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return-void
.end method
