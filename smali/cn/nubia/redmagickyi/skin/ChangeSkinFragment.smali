.class public Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;
.implements Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;,
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;,
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;,
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;,
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_MODEL_NAME:Ljava/lang/String; = "model_name"

.field private static final MSG_MODEL_UPDATE_ACTION_PROGRESS:I = 0x138d

.field private static final MSG_ON_MOTION_LIST_CHANGED:I = 0x138e


# instance fields
.field actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

.field private actionAndSkinView:Landroid/widget/FrameLayout;

.field actionItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field actionView:Landroid/view/View;

.field private adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

.field private btnOperateExchangeAchievement:Landroid/widget/Button;

.field private btnOperateExchangeActivity:Landroid/widget/Button;

.field private btnOperateExchangeFree:Landroid/widget/Button;

.field private btnOperateUnused:Landroid/widget/Button;

.field private btnOperateUsing:Landroid/widget/Button;

.field private changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

.field private childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private clearModeLayout:Landroid/widget/LinearLayout;

.field private clearModelImg:Landroid/widget/ImageView;

.field private clearModelText:Landroid/widget/TextView;

.field dataView:Landroid/view/View;

.field private dataViewLinearout:Landroid/widget/LinearLayout;

.field private detailLayout:Landroid/view/View;

.field private exchangeAchievementDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

.field private exchangeActivityDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

.field private exchangeSkinAnimation:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

.field private isClearModel:Z

.field private ivChangeFocus:Landroid/widget/ImageView;

.field private ivWallpaperTips:Landroid/widget/ImageView;

.field private lastUserName:Ljava/lang/String;

.field private layoutManager:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

.field mActionPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/bean/MotionBeans;",
            ">;"
        }
    .end annotation
.end field

.field private modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

.field private permissionRequestingView:Landroid/widget/CheckBox;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private profile:Landroid/widget/ImageView;

.field private profileLayout:Landroid/widget/LinearLayout;

.field private profileText:Landroid/widget/TextView;

.field private recyclerViewSkin:Landroidx/recyclerview/widget/RecyclerView;

.field private rightPanel:Landroid/view/View;

.field private rootView:Landroid/view/ViewGroup;

.field private skinFocusChangeLayout:Landroid/view/View;

.field private skinNetworkCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

.field private skinPreviewModel:Z

.field storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

.field storyBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation
.end field

.field storyView:Landroid/view/View;

.field private storyViewLinearlayout:Landroid/widget/LinearLayout;

.field storydetailLayout:Landroid/widget/LinearLayout;

.field private storylayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private tvAchievementPoint:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDesc2D3D:Landroid/widget/TextView;

.field private tvExchangeTipsAchievement:Landroid/widget/TextView;

.field private tvExchangeTipsActivity:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvWallpaperTips:Landroid/widget/TextView;

.field private wallpaperStatus:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinPreviewModel:Z

    .line 471
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->setActionAdapter()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->layoutManager:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->playExchangedAnimation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeActivityDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeAchievementDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    return-object p0
.end method

.method static synthetic access$1902(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;)Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeAchievementDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->stopExchangedAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinPreviewModel:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;IZ)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkin(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p0

    return-object p0
.end method

.method private animRootView(Z)V
    .locals 5

    .line 932
    const-string v0, "always_visible"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 933
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 934
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x8

    .line 936
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 938
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 939
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 941
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 946
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 947
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 948
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    if-eq v3, v4, :cond_2

    .line 949
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 950
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 952
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

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

.method private changeFocus(Ljava/lang/String;Z)V
    .locals 6

    .line 330
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 333
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 334
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 339
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aget-object v4, v1, v3

    invoke-static {p1, v4}, Lcn/nubia/redmagickyi/util/Utils;->setSkinFocalLen(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ivChangeFocus:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 341
    new-array p1, p1, [I

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_1xview:I

    aput v0, p1, v2

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_2xview:I

    aput v0, p1, v4

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v5, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_05xview:I

    aput v5, v0, v2

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_1xview:I

    aput v2, v0, v4

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_2xview:I

    aput v2, v0, p1

    move-object p1, v0

    .line 342
    :goto_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ivChangeFocus:Landroid/widget/ImageView;

    aget p1, p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    if-eqz p2, :cond_5

    .line 345
    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initChangeFocus(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private changeSkin(IZ)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->contain3DSkin()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1054
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    invoke-interface {v1, p1, p2, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->changeSkin(IZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1055
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    const/16 p2, 0x138d

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->removeMessages(I)V

    .line 1057
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->resetPlayState()V

    :cond_2
    return-void
.end method

.method private getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 1

    .line 1046
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getPreviewPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getCurrentSelecetedSkin(I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p0

    return-object p0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "model_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 1

    .line 717
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->checkAccountChanged(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    .line 719
    new-instance v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 180
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_status_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_status_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->wallpaperStatus:Landroid/widget/CheckBox;

    .line 185
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->wallpaperStatus:Landroid/widget/CheckBox;

    const-class v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->wallpaperStatus:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->wallpaperStatus:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_tips_wallpaper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ivWallpaperTips:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_tips_wallpaper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvWallpaperTips:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->clear_model_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->clearModelText:Landroid/widget/TextView;

    .line 194
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->profile_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileText:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->clearModelText:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileText:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mora_data_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    .line 198
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mora_trory_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyViewLinearlayout:Landroid/widget/LinearLayout;

    .line 199
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_bottom_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAndSkinView:Landroid/widget/FrameLayout;

    .line 200
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->right_panel_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rightPanel:Landroid/view/View;

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->skin_detail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_84_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 208
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyViewLinearlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_102_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 211
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyViewLinearlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_101_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_clear_model:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->clearModelImg:Landroid/widget/ImageView;

    .line 218
    new-instance v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->profile_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profile:Landroid/widget/ImageView;

    .line 230
    new-instance v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->clear_model_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->clearModeLayout:Landroid/widget/LinearLayout;

    .line 250
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->profile_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileLayout:Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    .line 254
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvName:Landroid/widget/TextView;

    .line 255
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc:Landroid/widget/TextView;

    .line 257
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_desc_2d3d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc2D3D:Landroid/widget/TextView;

    .line 258
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->skin_iv_changefocus_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinFocusChangeLayout:Landroid/view/View;

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->skin_iv_changefocus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ivChangeFocus:Landroid/widget/ImageView;

    .line 261
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$4;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initFocusChange(Z)V

    .line 268
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_right_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_exchange_tips_achievement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    .line 270
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_exchange_tips_activity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    .line 272
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_using:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUsing:Landroid/widget/Button;

    .line 275
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_unused:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUnused:Landroid/widget/Button;

    .line 277
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUnused:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_free:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeFree:Landroid/widget/Button;

    .line 280
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeFree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_achievement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeAchievement:Landroid/widget/Button;

    .line 283
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeAchievement:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_activity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeActivity:Landroid/widget/Button;

    .line 286
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeActivity:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeSkinAnimation:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    return-void
.end method

.method private openWebLink(Ljava/lang/String;)V
    .locals 3

    .line 1029
    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1033
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1037
    :catch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1039
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private playExchangedAnimation(I)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeSkinAnimation:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    if-eqz v0, :cond_0

    .line 1110
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->access$1300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1112
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    :goto_0
    return-void
.end method

.method private registChangeSkinNetworkCallback()V
    .locals 1

    .line 1267
    const-class v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;)V

    return-void
.end method

.method private setActionAdapter()V
    .locals 6

    .line 627
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object v1

    .line 630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 631
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 634
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 635
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer;->supportShowHidenMotion()Z

    move-result v4

    if-nez v4, :cond_2

    .line 636
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 640
    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-direct {v4, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;-><init>(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    if-gez v4, :cond_2

    .line 644
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 647
    :cond_2
    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-direct {v4, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;-><init>(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    if-eqz v1, :cond_4

    .line 654
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 656
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 660
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 662
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_6

    goto :goto_3

    .line 665
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 667
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 668
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 674
    :cond_8
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 663
    :cond_9
    :goto_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    :cond_a
    new-instance v0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    .line 680
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;)V

    .line 681
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->recycle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 682
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 683
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 684
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 685
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-nez v1, :cond_b

    .line 686
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 710
    :cond_b
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 711
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    if-eqz p0, :cond_c

    .line 712
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->getCurrentSelected()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_c
    return-void
.end method

.method private setModelName(Ljava/lang/String;)V
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "model_name"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopExchangedAnimation()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeSkinAnimation:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    if-eqz v0, :cond_0

    .line 1118
    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->access$1400(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)V

    :cond_0
    const/4 v0, 0x0

    .line 1120
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    return-void
.end method

.method private unregistChangeSkinNetworkCallback()V
    .locals 0

    .line 1271
    const-class p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method

.method private updateOpButtonUI(Landroid/widget/Button;Z)V
    .locals 1

    .line 899
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUsing:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 900
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUsing:Landroid/widget/Button;

    goto :goto_0

    .line 901
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUnused:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 902
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUnused:Landroid/widget/Button;

    goto :goto_0

    .line 903
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeFree:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 904
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeFree:Landroid/widget/Button;

    goto :goto_0

    .line 905
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeAchievement:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 906
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeAchievement:Landroid/widget/Button;

    goto :goto_0

    .line 907
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeActivity:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 908
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeActivity:Landroid/widget/Button;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eq p1, p0, :cond_6

    if-eqz p0, :cond_5

    const/4 v0, 0x4

    .line 915
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 917
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 922
    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public ClearModeChange(Z)V
    .locals 2

    .line 1456
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;-><init>()V

    const/16 v1, 0x401

    .line 1457
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;->setMsgID(I)V

    .line 1458
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;->setPure(Z)V

    .line 1459
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    if-nez p1, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ResetFocus()V

    :cond_0
    return-void
.end method

.method public ResetFocus()V
    .locals 2

    .line 1466
    const-string v0, "0X"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initChangeFocus(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeFocus(Ljava/lang/String;Z)V

    return-void
.end method

.method public StoryDetailClose()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storydetailLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 557
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 559
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 560
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/model/StoryBeans;->setSelecte(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    if-eqz p0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 153
    instance-of v0, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    :cond_0
    return-void
.end method

.method public checkAccountChanged(Ljava/lang/String;)Z
    .locals 4

    .line 723
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;->isOfflineMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 727
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 730
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getShowName()Ljava/lang/String;

    move-result-object v0

    .line 732
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 734
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->TAG:Ljava/lang/String;

    const-string v0, "account already logout"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->onBackPress()Z

    .line 736
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->achievement_acct_logout:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v3

    .line 738
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->lastUserName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 740
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->TAG:Ljava/lang/String;

    const-string v0, "account already changed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->onBackPress()Z

    .line 742
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->achievement_acct_changed:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return v3

    .line 745
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->TAG:Ljava/lang/String;

    const-string v3, "account is login now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->lastUserName:Ljava/lang/String;

    .line 747
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->setModelName(Ljava/lang/String;)V

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 981
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->hideTips()V

    .line 982
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public go2Achievement()V
    .locals 4

    .line 1069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    const-string v1, "model_name"

    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const-class v2, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    new-instance v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method public hideTips()V
    .locals 1

    .line 1478
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvWallpaperTips:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1479
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rootView:Landroid/view/ViewGroup;

    .line 126
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance p2, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    const v0, 0xea60

    invoke-direct {p1, v0, p2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method public initActionAdapter()V
    .locals 5

    .line 572
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 573
    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->skin_bottom_panel_layout_view:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAndSkinView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    .line 574
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->action_layout_recycle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 575
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->skin_layout_recycle_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 577
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->recycle_view_skin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->recyclerViewSkin:Landroidx/recyclerview/widget/RecyclerView;

    .line 579
    new-instance v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$10;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$10;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 593
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->radio_group_action_and_skin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 594
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->radio_action:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 595
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 596
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->radio_skin:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 597
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x1

    .line 598
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 599
    new-instance v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;

    invoke-direct {v3, p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 619
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->setActionAdapter()V

    .line 620
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAndSkinView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 622
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAndSkinView:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public initChangeFocus(Ljava/lang/String;)V
    .locals 1

    .line 1471
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;-><init>()V

    const/16 v0, 0x3ee

    .line 1472
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setMsgID(I)V

    .line 1473
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setScaleValue(Ljava/lang/String;)V

    .line 1474
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public initClearModelView()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAndSkinView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->clearModeLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinFocusChangeLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    if-nez v0, :cond_6

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinPreviewModel:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinPreviewModel:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rightPanel:Landroid/view/View;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinPreviewModel:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 307
    :cond_6
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->profileLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rightPanel:Landroid/view/View;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_9
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ClearModeChange(Z)V

    return-void
.end method

.method public initDataView()V
    .locals 16

    move-object/from16 v1, p0

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$array;->model_info_key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$array;->model_info_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 355
    sget v4, Lcn/nubia/redmagickyi/main/R$layout;->model_data_layout_views:I

    iget-object v5, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    .line 356
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->more_en_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/view/StrokeTextView;

    .line 357
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 358
    iget-object v3, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->more_cn_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/view/StrokeTextView;

    .line 359
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 360
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 361
    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setVisibility(I)V

    .line 363
    :cond_0
    iget-object v3, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_sub_data:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 364
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBgId(Landroid/content/Context;)I

    move-result v4

    const/16 v7, 0xbbd

    if-ne v4, v7, :cond_1

    .line 365
    const-string v4, "#66FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 369
    :goto_0
    iget-object v3, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->arrive_time:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    .line 370
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    iget-object v4, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v7, Lcn/nubia/redmagickyi/main/R$id;->birth_day:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 372
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    iget-object v7, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v8, Lcn/nubia/redmagickyi/main/R$id;->birth_day_value:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    .line 374
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 375
    iget-object v8, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v9, Lcn/nubia/redmagickyi/main/R$id;->model_hight:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 376
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 377
    iget-object v9, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v10, Lcn/nubia/redmagickyi/main/R$id;->model_hight_value:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    .line 378
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    iget-object v10, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v11, Lcn/nubia/redmagickyi/main/R$id;->model_weight:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 380
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    iget-object v11, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v12, Lcn/nubia/redmagickyi/main/R$id;->model_weight_value:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    .line 382
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 383
    iget-object v12, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v13, Lcn/nubia/redmagickyi/main/R$id;->age:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 384
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 385
    iget-object v13, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v14, Lcn/nubia/redmagickyi/main/R$id;->age_value:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    .line 386
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 387
    iget-object v14, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v15, Lcn/nubia/redmagickyi/main/R$id;->blood_type:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 388
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    iget-object v15, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    sget v6, Lcn/nubia/redmagickyi/main/R$id;->blood_type_value:I

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/TextView;

    .line 390
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 391
    sget v6, Lcn/nubia/redmagickyi/main/R$string;->redmagic_skin_arrive_date:I

    invoke-virtual {v3, v6}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(I)V

    .line 392
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 393
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    const/4 v3, 0x0

    .line 395
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    aget-object v3, v2, v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 397
    aget-object v5, v0, v3

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    aget-object v3, v2, v3

    invoke-virtual {v9, v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    .line 399
    aget-object v5, v0, v3

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    aget-object v3, v2, v3

    invoke-virtual {v11, v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    .line 401
    aget-object v5, v0, v3

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    aget-object v3, v2, v3

    invoke-virtual {v13, v3}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    .line 403
    aget-object v0, v0, v3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    aget-object v0, v2, v3

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 407
    iget-object v0, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    :cond_3
    new-instance v6, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v9, v6

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v12, v9

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initFocusChange(Z)V
    .locals 5

    .line 315
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getSkinFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 319
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 320
    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 324
    array-length v0, v1

    if-lt v3, v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 327
    :goto_3
    aget-object v0, v1, v2

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeFocus(Ljava/lang/String;Z)V

    return-void
.end method

.method public initRightViewStatus(Z)V
    .locals 4

    .line 294
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->rightPanel:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->detailLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initStoryView()V
    .locals 8

    .line 475
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveFriendLevel(Landroid/content/Context;I)V

    .line 476
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 477
    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->model_story_layout_view:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataViewLinearout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    .line 478
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    .line 480
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->story_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 483
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->more_privacy_data_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 495
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 496
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->story_detail_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storydetailLayout:Landroid/widget/LinearLayout;

    .line 497
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->img_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 498
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$7;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->story_detail_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 505
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->story_detail_index:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 506
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 507
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->detail_text:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 508
    new-instance v5, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    .line 509
    iget-object v6, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->notifyDataSetChangedByLevel(Ljava/util/List;I)V

    .line 510
    iget-object v5, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    new-instance v6, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;

    invoke-direct {v6, p0, v0, v3, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->setOnStoryItemClickListener(Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;)V

    .line 530
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->story_recycle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    .line 531
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 532
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 533
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 534
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 536
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storylayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    .line 537
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 538
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storylayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 540
    :goto_0
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$9;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$9;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 548
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 549
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyViewLinearlayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 551
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyViewLinearlayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 928
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onAttach(Landroid/content/Context;)V

    .line 147
    new-instance p1, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_skin_child_fragment:I

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-void
.end method

.method public onBackPress()Z
    .locals 3

    .line 961
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 962
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->isClearModel:Z

    .line 963
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    if-eqz v2, :cond_0

    .line 964
    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->IsClearModel(Z)V

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initClearModelView()V

    return v1

    .line 969
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    if-eqz v0, :cond_2

    .line 970
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result p0

    return p0

    .line 971
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeSkinAnimation:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->access$1100(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 972
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->stopExchangedAnimation()V

    return v1

    .line 975
    :cond_3
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1148
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_status_checkbox:I

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 1151
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1153
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getCurrentActivedSkinId()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 1159
    :cond_0
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 1161
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance p2, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$17;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$17;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 994
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->onHideFragment()V

    goto/16 :goto_2

    .line 996
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_unused:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_free:I

    if-eq p1, v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_achievement:I

    if-eq p1, v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_operate_exchange_activity:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1017
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_exchange_tips_activity:I

    if-ne p1, v0, :cond_2

    .line 1019
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p1

    .line 1020
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getActivityLink()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->openWebLink(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1021
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_tips_wallpaper:I

    if-ne p1, v0, :cond_9

    .line 1022
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvWallpaperTips:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 1023
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 997
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p1

    .line 998
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 999
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkin(IZ)V

    .line 1000
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    .line 1002
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mora_model_name"

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mora_model_changed"

    invoke-virtual {v0, p0, v2, v1, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1004
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1007
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 1008
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeActivityDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1009
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeAchievementDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1010
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeAchievementDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->dismiss()V

    .line 1012
    :cond_7
    new-instance p1, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->exchangeActivityDialog:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    .line 1013
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->show()V

    goto :goto_2

    .line 1005
    :cond_8
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->setExchangeSkin(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    .line 1006
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinFromAchievemnt(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "0X"

    invoke-static {p3, v0}, Lcn/nubia/redmagickyi/util/Utils;->setSkinFocalLen(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_change_skin:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initDataView()V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initStoryView()V

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initActionAdapter()V

    .line 166
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initData()V

    .line 167
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->registChangeSkinNetworkCallback()V

    const/4 p2, 0x1

    .line 168
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->animRootView(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->StoryDetailClose()V

    .line 175
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onDestroyView()V

    .line 176
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->unregistChangeSkinNetworkCallback()V

    return-void
.end method

.method public onExchangeClick(Ljava/lang/String;)V
    .locals 2

    .line 1098
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinNetworkCallback;->setExchangeSkin(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    .line 1100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinFromActivity(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;)V

    return-void
.end method

.method public onHideFragment()V
    .locals 1

    .line 987
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 v0, 0x0

    .line 988
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->animRootView(Z)V

    return-void
.end method

.method public onItemClickToPlay(Landroid/view/View;I)V
    .locals 3

    .line 1186
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    const/16 v0, 0x138d

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->removeMessages(I)V

    .line 1187
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 1188
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v2, 0x3e8

    .line 1189
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v2, 0x1

    .line 1190
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 1191
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 1192
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 1195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1196
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1197
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1198
    iput p2, v1, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    .line 1199
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 1200
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    const-wide/16 p1, 0x1e

    invoke-virtual {p0, v1, p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onItemClickToStopPlay(Landroid/view/View;I)V
    .locals 0

    .line 1205
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->stopPlayMotion()V

    .line 1207
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    const/16 p2, 0x138d

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->removeMessages(I)V

    .line 1209
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->resetPlayState()V

    return-void
.end method

.method public onMotionListChanged()V
    .locals 4

    .line 1484
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x138e

    .line 1485
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->removeMessages(I)V

    .line 1486
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->modelOperateHandler:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1173
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1174
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1177
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 1178
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 1179
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_status_checkbox:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    .line 1127
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1129
    const-class p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1131
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz p2, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 1133
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1134
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1139
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    :cond_2
    return v2
.end method

.method public onWatchAchievementClick()V
    .locals 1

    .line 1063
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->checkAccountChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->changeSkinOpCallback:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->go2Achievement()V

    :cond_0
    return-void
.end method

.method public onWatchActivityClick()V
    .locals 0

    .line 1105
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public updateUI(Z)V
    .locals 12

    .line 761
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v0

    .line 762
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 763
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 764
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 769
    :cond_0
    new-instance v4, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$13;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$13;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    .line 776
    new-instance v5, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;

    invoke-direct {v5, p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setOnSkinItemClickListener(Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;)V

    .line 797
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v3

    .line 798
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 799
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 801
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setSelectePos(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 805
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getItemCount()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getItemCount()I

    move-result v1

    div-int/2addr v1, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result v4

    rem-int/2addr v1, v4

    .line 807
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->recyclerViewSkin:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 808
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->recyclerViewSkin:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_3

    .line 765
    :cond_4
    :goto_2
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->toast(I)V

    .line 766
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->onHideFragment()V

    return-void

    .line 811
    :cond_5
    :goto_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setCurrentActivedSkinId(I)V

    .line 812
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->adapter:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyDataSetChanged()V

    .line 813
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalPoint()I

    move-result v1

    .line 815
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_8

    .line 816
    filled-new-array {v4, v1}, [I

    move-result-object v7

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 817
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int/2addr v4, v1

    .line 819
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v6, :cond_6

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_6
    const/16 v4, 0x14

    if-gt v1, v4, :cond_7

    mul-int/lit8 v1, v1, 0x28

    int-to-long v8, v1

    goto :goto_4

    :cond_7
    const-wide/16 v8, 0x3e8

    :goto_4
    const-wide/16 v10, 0x64

    .line 827
    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 828
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 829
    new-instance v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$15;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$15;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 839
    :cond_8
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalPoint()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 840
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvAchievementPoint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v7

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->achievement_point:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :goto_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v1

    .line 844
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    move-object v7, v5

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getDesc()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x8

    if-eqz v4, :cond_a

    .line 846
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 847
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 848
    iget-object v8, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v8, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 851
    :cond_a
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    :goto_7
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinType()I

    move-result v4

    if-ne v4, v6, :cond_f

    .line 855
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    const/16 v8, 0x3e8

    if-eq v4, v8, :cond_d

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    const/16 v8, 0x3e9

    if-eq v4, v8, :cond_d

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    const/16 v8, 0x3ea

    if-eq v4, v8, :cond_d

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    const/16 v8, 0x3eb

    if-ne v4, v8, :cond_b

    goto :goto_9

    .line 858
    :cond_b
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_2d_noalarm_digitalhuman:I

    goto :goto_8

    :cond_c
    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_2d_noalarm:I

    :goto_8
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 856
    :cond_d
    :goto_9
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v4

    if-eqz v4, :cond_e

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_2d_digitalhuman:I

    goto :goto_a

    :cond_e
    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_2d:I

    :goto_a
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 861
    :cond_f
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v4

    if-eqz v4, :cond_10

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_3d_digitalhuman:I

    goto :goto_b

    :cond_10
    sget v4, Lcn/nubia/redmagickyi/main/R$string;->change_skin_desc_3d:I

    :goto_b
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 863
    :goto_c
    iget-object v8, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvDesc2D3D:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v4

    if-ne v4, v6, :cond_11

    .line 866
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 869
    :cond_11
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v4

    if-ne v4, v2, :cond_12

    .line 870
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getAchievementPoint()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 873
    :cond_12
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v4

    if-ne v4, v6, :cond_13

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getActivityLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 874
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 877
    :cond_13
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsAchievement:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->tvExchangeTipsActivity:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    :goto_d
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v3

    if-ne v0, v3, :cond_14

    .line 883
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUsing:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateOpButtonUI(Landroid/widget/Button;Z)V

    goto :goto_e

    .line 885
    :cond_14
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v0

    if-ne v0, v6, :cond_15

    .line 886
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateUnused:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateOpButtonUI(Landroid/widget/Button;Z)V

    goto :goto_e

    .line 887
    :cond_15
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    if-nez v0, :cond_16

    .line 888
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeFree:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateOpButtonUI(Landroid/widget/Button;Z)V

    goto :goto_e

    .line 889
    :cond_16
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 890
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeAchievement:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateOpButtonUI(Landroid/widget/Button;Z)V

    goto :goto_e

    .line 892
    :cond_17
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->btnOperateExchangeActivity:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateOpButtonUI(Landroid/widget/Button;Z)V

    :goto_e
    return-void
.end method
