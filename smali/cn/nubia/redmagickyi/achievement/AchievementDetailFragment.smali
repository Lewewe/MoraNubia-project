.class public Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "AchievementDetailFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AchievementDetailFragment"


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private rootView:Landroid/view/View;

.field private task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->from(Landroid/content/Context;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    move-result-object v0

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v1, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;-><init>(Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->play(Landroid/view/ViewGroup;Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;)V

    return-void
.end method


# virtual methods
.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createEnterAnimator()Landroid/animation/Animator;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_fragment_open_enter:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createExitAnimator()Landroid/animation/Animator;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_fragment_close_exit:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    const-string p1, "task"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 31
    const-string p1, "frame_foreground"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onBackPress()Z
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->onHideFragment()V

    const/4 p0, 0x1

    return p0
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_achievement_detail:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->rootView:Landroid/view/View;

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->initView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->rootView:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->getContext()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    sget-object p1, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onDestroyView()V

    .line 109
    sget-object v0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->from(Landroid/content/Context;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->stop()V

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    return-void
.end method
