.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;
.super Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.source "DanceStudioFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;
    }
.end annotation


# instance fields
.field private dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

.field private isInPreviewMode:Z

.field private uiManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->isInPreviewMode:Z

    return p1
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->cancelLoadList(Z)V

    .line 84
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->recycle()V

    return-void
.end method


# virtual methods
.method protected initRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected isNeedToShowTabBadge()Z
    .locals 0

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->isHaveNewAdd()Z

    move-result p0

    return p0
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Z
    .locals 1

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPress()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->isInPreviewMode:Z

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onResume()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->isInPreviewMode:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onStop()V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    .line 42
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    .line 43
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    return-void
.end method

.method public recreate()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    .line 79
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->release()V

    return-void
.end method

.method protected reload()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    :cond_0
    return-void
.end method
