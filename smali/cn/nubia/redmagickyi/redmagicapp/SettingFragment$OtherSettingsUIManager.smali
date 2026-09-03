.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;
.super Ljava/lang/Object;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSettingsUIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;,
        Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ABOUT:I = 0x4

.field private static final TYPE_ADD_SHORTCUT:I = 0x0

.field private static final TYPE_AGREEMENT:I = 0x2

.field private static final TYPE_CLEAN_CACHE:I = 0x1

.field private static final TYPE_ICP:I = 0x5

.field private static final TYPE_PRIVACY:I = 0x3


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rvOther:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;Landroid/view/View;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 440
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)Ljava/util/List;
    .locals 0

    .line 440
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    return-object p0
.end method

.method private initList()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$600(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->checkEnableShortcut(Lcn/nubia/redmagickyi/shortcut/util/Shortcut;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldswitchServiceDescribe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->list:Ljava/util/List;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 459
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->initList()V

    .line 460
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->rv_other:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    .line 461
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 464
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 466
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 467
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 468
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 486
    :goto_0
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->adapter:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    .line 487
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
