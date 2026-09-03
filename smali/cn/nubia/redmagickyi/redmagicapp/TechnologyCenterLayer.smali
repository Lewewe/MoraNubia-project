.class public Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;,
        Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0xfaL

.field private static final PLAY_PATH_BASE:Ljava/lang/String; = "video/techcenter/%s.mp4"

.field private static final TAG:Ljava/lang/String; = "TechnologyCenterDialog"


# instance fields
.field private chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

.field private contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

.field private context:Landroid/app/Activity;

.field private entranceView:Landroid/view/View;

.field private isPause:Z

.field private layerEnterAnimation:Landroid/view/animation/AnimationSet;

.field private layerExitAnimation:Landroid/view/animation/AnimationSet;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;",
            ">;"
        }
    .end annotation
.end field

.field private onEventListener:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;

.field private permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private technologyCenterAdapter:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

.field private viewToDismiss:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v1, 0xea60

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    .line 93
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    .line 95
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->entranceView:Landroid/view/View;

    .line 96
    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    .line 97
    iput-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;

    .line 98
    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->initView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->initTechnologyCenterAdapter()V

    .line 100
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isPause:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->technologyCenterAdapter:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->entranceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    return-object p0
.end method

.method private getSettingsInt(Ljava/lang/String;)I
    .locals 1

    .line 704
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initAnimation()V
    .locals 9

    .line 293
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 294
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 295
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    .line 296
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v7, 0xfa

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 299
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 301
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 302
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    .line 304
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 306
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 307
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->rv_techcenter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    invoke-direct {p0, p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setOnMarginClickListener(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic lambda$searchDifferentOfViewToDismiss$0(Ljava/util/Set;Landroid/view/View;)Z
    .locals 0

    .line 173
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private putSettingsInt(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 699
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private registContentObserver()V
    .locals 3

    .line 608
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    .line 609
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setOnMarginClickListener(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 711
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 782
    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;

    invoke-direct {p2, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private unregistContentObserver()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 615
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->access$800(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 616
    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    :cond_0
    return-void
.end method

.method private updateTechCenterUI()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutDirection(I)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutDirection(I)V

    .line 324
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v2

    .line 325
    :goto_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 326
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 327
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto/16 :goto_3

    .line 339
    :cond_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getTechcenterThumbnailResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 340
    const-class v4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 342
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$3;

    invoke-direct {v4, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 329
    :cond_2
    const-class v4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 331
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$2;

    invoke-direct {v4, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 350
    :cond_3
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getSettingsInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 353
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;

    invoke-direct {v4, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getViewToDismiss()[Landroid/view/View;
    .locals 0

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    return-object p0
.end method

.method public hide()V
    .locals 9

    .line 404
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->unregistContentObserver()V

    .line 406
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onPause()V

    .line 407
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 410
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_3

    .line 414
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    .line 416
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 417
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 418
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    if-nez v6, :cond_2

    .line 421
    iget-object v6, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v6}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v6

    const-wide/16 v7, 0xfa

    .line 422
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 423
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;

    if-eqz p0, :cond_4

    .line 431
    invoke-interface {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;->onHideTechCenter()V

    :cond_4
    return-void
.end method

.method public initTechnologyCenterAdapter()V
    .locals 11

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->tec_center_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$array;->tec_center_footer:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 188
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_10

    .line 190
    const-string v4, "video/techcenter/%s.mp4"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto/16 :goto_5

    .line 265
    :cond_0
    iget-object v8, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v8}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->AlarmEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 266
    new-instance v8, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 267
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_remagic_alarm_clock:I

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 271
    invoke-virtual {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto :goto_1

    .line 254
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportDesktopPetWallpaper()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 255
    iget-object v7, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v7

    .line 256
    new-instance v8, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 257
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getTechcenterThumbnailResId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 260
    const-class v4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 261
    invoke-virtual {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    :goto_1
    move-object v6, v8

    goto/16 :goto_5

    .line 244
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportInteractiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 245
    new-instance v4, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v4, v5}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 246
    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 247
    iget-object v7, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_interactive_wallpaper:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 249
    const-class v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 250
    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    move-object v6, v4

    goto/16 :goto_5

    .line 230
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportLowBatteryRemind()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 231
    new-instance v8, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 232
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_low_battery:I

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {v8, v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 236
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    invoke-virtual {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto :goto_1

    .line 212
    :cond_5
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportAlarmClock()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v8}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 213
    :cond_6
    new-instance v8, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 214
    const-string v9, "magic_alarm_clock"

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 215
    iget-object v9, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget v10, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_alarm_clock:I

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getSettingsKey()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getSettingsInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_7

    move v4, v7

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 218
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 219
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportAlarmClock()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 220
    invoke-virtual {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto/16 :goto_1

    .line 225
    :cond_8
    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto/16 :goto_1

    .line 192
    :cond_9
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportPowerCharge()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 193
    iget-object v6, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v6

    .line 194
    new-instance v8, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-direct {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;-><init>(I)V

    .line 195
    const-string v9, "magic_power_charge"

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setSettingsKey(Ljava/lang/String;)V

    .line 196
    iget-object v9, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailResId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v9, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v9}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyleList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v7, :cond_a

    .line 199
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterVideoName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_a
    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setVideoPath(Ljava/lang/String;)V

    .line 203
    :goto_3
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getSettingsInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_b

    move v4, v7

    goto :goto_4

    :cond_b
    move v4, v2

    :goto_4
    invoke-virtual {v8, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 204
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 205
    invoke-virtual {v8, v2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto/16 :goto_1

    .line 207
    :cond_c
    invoke-virtual {v8, v7}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setLock(Z)V

    goto/16 :goto_1

    :cond_d
    :goto_5
    if-eqz v6, :cond_f

    .line 278
    aget-object v4, v0, v3

    invoke-virtual {v6, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setTitel(Ljava/lang/String;)V

    .line 279
    aget-object v4, v1, v3

    invoke-virtual {v6, v4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setDescribe(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v4

    if-ne v4, v5, :cond_e

    .line 281
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v4, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 283
    :cond_e
    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 287
    :cond_10
    new-instance v0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->technologyCenterAdapter:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    .line 288
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->setTechnologyCenterItemOnclick(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;)V

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->technologyCenterAdapter:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 437
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$searchDifferentOfViewToDismiss$1$cn-nubia-redmagickyi-redmagicapp-TechnologyCenterLayer(I)[Landroid/view/View;
    .locals 0

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->hide()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->technologyCenterAdapter:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isPause:Z

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 632
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 637
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 640
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setPressing(Z)V

    .line 641
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 642
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isPause:Z

    .line 312
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->updateTechCenterUI()V

    .line 313
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->access$500(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->contentChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->access$600(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)V

    :cond_0
    return-void
.end method

.method public onSwitchCheckClick(Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;IZ)V
    .locals 5

    .line 449
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 450
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getSettingsKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->putSettingsInt(Ljava/lang/String;I)V

    .line 451
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const-string v2, " isPressing? "

    const-string v3, "TechnologyCenterDialog"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isPressing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", checked? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isPressing()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 480
    invoke-virtual {p1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setPressing(Z)V

    if-eqz p3, :cond_1

    .line 482
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p2, v4, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    .line 483
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->updateTechCenterUI()V

    .line 484
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    .line 485
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 486
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result p0

    const-string p3, "mora_pet_setting"

    const-string v0, "pet_name"

    invoke-virtual {p1, p2, p3, v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 488
    :cond_1
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 489
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$6;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 495
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    goto/16 :goto_1

    .line 460
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isPressing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " checked? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isPressing()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 462
    invoke-virtual {p1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setPressing(Z)V

    if-eqz p3, :cond_3

    .line 464
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p2, v4, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    .line 465
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->updateTechCenterUI()V

    goto :goto_0

    .line 466
    :cond_3
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 467
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$5;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 474
    :cond_4
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    goto :goto_1

    .line 456
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlMagicAlarmClock()V

    .line 457
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    goto :goto_1

    .line 453
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onSwitchCheckTouch(Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;ILandroid/view/MotionEvent;I)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    .line 507
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    .line 512
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->permissionRequestingView:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    .line 521
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 522
    invoke-virtual {p4}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->isLock()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 523
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 524
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->function_lock_toast:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_3
    return v1

    .line 528
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 p4, 0x0

    if-ne p3, v1, :cond_5

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    .line 529
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->isDesktopPetNeedRemindSetWallPaper()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_5

    .line 530
    new-instance p2, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;

    iget-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    new-instance p4, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;

    invoke-direct {p4, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;)V

    invoke-direct {p2, p3, p4}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;)V

    .line 539
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->show()V

    return v1

    :cond_5
    return p4
.end method

.method public onTechnologyItemClick(Landroid/view/View;I)V
    .locals 2

    .line 550
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 551
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 585
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const-class v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object p1

    .line 575
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 576
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const-class v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const-class v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string v0, "actionList"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 581
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 556
    :cond_2
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result p0

    invoke-virtual {p1, p2, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->PreviewWallPaper(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 553
    :cond_3
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p0, p2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->PreviewWallPaper(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 559
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_6

    .line 561
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const-class v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 564
    sget-object p2, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->DELAYED_FINISH_KEY:Ljava/lang/String;

    const/16 v0, 0x1b58

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 568
    :cond_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    const-class v1, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public searchDifferentOfViewToDismiss([Landroid/view/View;)[Landroid/view/View;
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 172
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 173
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V

    .line 174
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public setViewToDismiss([Landroid/view/View;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    return-void
.end method

.method public shouldShowSettingIcon(I)Z
    .locals 3

    .line 594
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 595
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return v2

    .line 599
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    return v2

    .line 601
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 602
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyleList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public show()V
    .locals 8

    .line 372
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 373
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->registContentObserver()V

    .line 374
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onResume()V

    .line 375
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 378
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_3

    .line 382
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    .line 384
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    .line 385
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    if-eqz v5, :cond_2

    .line 388
    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->context:Landroid/app/Activity;

    invoke-static {v5}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v5

    const-wide/16 v6, 0xfa

    .line 389
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 390
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;

    if-eqz p0, :cond_4

    .line 398
    invoke-interface {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;->onShowTechCenter()V

    :cond_4
    return-void
.end method
