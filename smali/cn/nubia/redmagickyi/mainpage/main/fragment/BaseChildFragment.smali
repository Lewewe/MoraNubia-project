.class public abstract Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "BaseChildFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;,
        Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$State;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_IS_ACCOUNT_INIT_COMPLATE:Ljava/lang/String; = "BUNDLE_KEY_IS_ACCOUNT_INIT_COMPLATE"

.field protected static final STATE_LOADING:I = 0x0

.field protected static final STATE_LOAD_COMPLETED:I = 0x1

.field protected static final STATE_LOAD_FAILED:I = 0x2


# instance fields
.field private btnReload:Landroid/widget/Button;

.field private isLogin:Ljava/lang/Boolean;

.field private isPaused:Z

.field private layoutAddon:Landroid/view/View;

.field private layoutLoading:Landroid/view/View;

.field private layoutNoNetwork:Landroid/view/View;

.field private layoutRecyclerView:Landroid/view/View;

.field private opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutAddon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->showLoading()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideList()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideErrorPanel()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->showList()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->showErrorPanel()V

    return-void
.end method

.method private hideErrorPanel()V
    .locals 1

    .line 268
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutNoNetwork:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 269
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideList()V
    .locals 1

    .line 252
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutRecyclerView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 253
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideLoading()V
    .locals 1

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutLoading:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showErrorPanel()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutNoNetwork:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isPaused:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_no_network_toast:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_1
    return-void
.end method

.method private showList()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutRecyclerView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 1

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutLoading:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 158
    instance-of v0, p1, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    :cond_0
    return-void
.end method

.method public final createEnterAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createEnterAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createExitAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    return-object p0
.end method

.method protected getLoadState()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutLoading:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutNoNetwork:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 57
    const-string p1, "BUNDLE_KEY_IS_ACCOUNT_INIT_COMPLATE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isLogin:Ljava/lang/Boolean;

    .line 59
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "isLogin = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract initRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method protected abstract isNeedToShowTabBadge()Z
.end method

.method public onAccountInitComplete(Z)V
    .locals 0

    return-void
.end method

.method public onAccountInitFailed()V
    .locals 0

    return-void
.end method

.method public onBackPress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 65
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_mainpage_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutRecyclerView:Landroid/view/View;

    .line 67
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_addon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutAddon:Landroid/view/View;

    .line 69
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->error_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutNoNetwork:Landroid/view/View;

    .line 70
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->btn_reload:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->btnReload:Landroid/widget/Button;

    .line 71
    new-instance p3, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutLoading:Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onLoading()V

    return-object p1
.end method

.method public final onLoadComplete()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->TAG:Ljava/lang/String;

    const-string v1, "data load complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onLoadFailed()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->TAG:Ljava/lang/String;

    const-string v1, "data load failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideLoading()V

    .line 227
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideList()V

    .line 228
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->showErrorPanel()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$5;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onLoading()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->TAG:Ljava/lang/String;

    const-string v1, "data loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->showLoading()V

    .line 188
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideList()V

    .line 189
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->hideErrorPanel()V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$3;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onMainFragmentResume()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onPause()V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isPaused:Z

    .line 167
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getLoadState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isNeedToShowTabBadge()Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->shouldChangeBadgeState(Z)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->performReload()Z

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->opCallback:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    if-eqz p0, :cond_1

    .line 174
    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->reload()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->layoutAddon:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;-><init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isLogin:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onAccountInitComplete(Z)V

    :cond_0
    return-void
.end method

.method public performReload()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performReload, state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->reload()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract recreate()V
.end method

.method protected abstract reload()V
.end method
