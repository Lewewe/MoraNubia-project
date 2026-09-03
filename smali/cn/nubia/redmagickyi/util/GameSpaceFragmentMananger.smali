.class public Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
.super Ljava/lang/Object;
.source "GameSpaceFragmentMananger.java"


# instance fields
.field private mBaseCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

.field private mContainerId:I

.field private mContext:Landroid/app/Activity;

.field private mFragMgr:Landroidx/fragment/app/FragmentManager;

.field private mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;-><init>(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mBaseCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mContext:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    .line 21
    iput p3, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mContainerId:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;)Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
    .locals 0

    .line 12
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    return-object p1
.end method


# virtual methods
.method public getContainerId()I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mContainerId:I

    return p0
.end method

.method public getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    return-object p0
.end method

.method public hideFragment()V
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    :cond_0
    return-void
.end method

.method public showFragment(ILjava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    .line 42
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mContext:Landroid/app/Activity;

    invoke-virtual {p2, v1, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_0
    :goto_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    if-eqz p2, :cond_1

    .line 48
    iget-object p3, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mBaseCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 49
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    invoke-virtual {p2, p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    const/16 p2, 0x1001

    .line 50
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mFragment:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;",
            ")V"
        }
    .end annotation

    .line 33
    iget v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->mContainerId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(ILjava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method
