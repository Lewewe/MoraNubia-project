.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;
.super Ljava/lang/Object;
.source "WallPaperHubFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

.field private currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->initAdapter(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;I)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->scrollToChildPosition(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->notifyItemChanged()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->notifyDataSetChanged()V

    return-void
.end method

.method private initAdapter(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 358
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 361
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 363
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;-><init>(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    .line 372
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->setChildActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V

    .line 373
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 0

    .line 464
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private notifyItemChanged()V
    .locals 0

    .line 470
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-eqz p0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->notifyItemChanged()V

    :cond_0
    return-void
.end method

.method private scrollToChildPosition(I)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 382
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 383
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    .line 384
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$1202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;Z)Z

    .line 385
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public onMoreClick(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;)V"
        }
    .end annotation

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    const-string v1, "viewtype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string p1, "data"

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 425
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->getFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    new-instance p3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V

    invoke-virtual {p1, p2, v0, p3}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method public onSwitchCheckClick(Landroid/view/View;Z)V
    .locals 0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 398
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 400
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->setPriority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 412
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 413
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->hasPermission(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
