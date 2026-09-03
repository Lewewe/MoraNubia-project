.class public abstract Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;
.source "BaseGameSpaceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private data:Landroid/os/Bundle;

.field private mContext:Landroid/app/Activity;

.field private mEnterAnimation:Landroid/view/animation/Animation;

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimation:Landroid/view/animation/Animation;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mOpCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initAnim()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createEnterAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createExitAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createEnterAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createExitAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 0

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public final getEnterAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public final getEnterAnimator()Landroid/animation/Animator;
    .locals 0

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public final getExitAnimator()Landroid/animation/Animator;
    .locals 0

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getOpCallback()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mContext:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->data:Landroid/os/Bundle;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->initAnim()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    const-string p1, "onActivityCreated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 173
    instance-of v1, v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz v1, :cond_0

    .line 279
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 280
    invoke-interface {v1, v3, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    .line 282
    invoke-interface {v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz v1, :cond_0

    .line 248
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 249
    invoke-interface {v1, v3, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    .line 251
    invoke-interface {v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz v1, :cond_0

    .line 266
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    .line 267
    invoke-interface {v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    if-ne p1, v2, :cond_0

    .line 269
    invoke-interface {v1, v3, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    .line 236
    invoke-interface {v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    if-ne p1, v2, :cond_0

    .line 238
    invoke-interface {v1, v3, v3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBackPress()Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/16 p3, 0x1001

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_0

    .line 213
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    :goto_0
    return-object p0

    :cond_1
    const/16 p3, 0x2002

    if-ne p3, p1, :cond_3

    if-eqz p2, :cond_2

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimation:Landroid/view/animation/Animation;

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/16 p3, 0x1001

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_0

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    :goto_0
    return-object p0

    :cond_1
    const/16 p3, 0x2002

    if-ne p3, p1, :cond_3

    if-eqz p2, :cond_2

    .line 226
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mEnterAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mExitAnimator:Landroid/animation/Animator;

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 50
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 53
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    move-object p0, p1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method public abstract onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onDestroy()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onDestroy()V

    .line 206
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHideFragment()V
    .locals 1

    .line 299
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->mOpCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onHideFragment()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onPause()V

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onResume()V

    .line 194
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onStart()V

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->TAG:Ljava/lang/String;

    const-string v0, "onStart"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
