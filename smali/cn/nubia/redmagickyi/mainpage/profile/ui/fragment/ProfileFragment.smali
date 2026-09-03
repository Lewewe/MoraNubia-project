.class public Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;
.super Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;,
        Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;
    }
.end annotation


# instance fields
.field private dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

.field private uiManager:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    return-object p0
.end method

.method public static release()V
    .locals 0

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 38
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;

    .line 39
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    return-void
.end method

.method protected initRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->access$100(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected isNeedToShowTabBadge()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->getFriendLevelByAccount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->getFriendnessLevel()I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveFriendLevel(Landroid/content/Context;I)V

    .line 58
    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryPositionByLevel(I)I

    move-result p0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryPositionByLevel(I)I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAccountInitComplete(Z)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onAccountInitComplete(Z)V

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccountInitComplete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    if-eqz v0, :cond_0

    .line 89
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$200(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onAccountInitFailed()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onAccountInitFailed()V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadFailed()V

    return-void
.end method

.method public onBackPress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onStop()V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    if-eqz p0, :cond_0

    .line 117
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$200(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public recreate()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$200(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V

    .line 81
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->release()V

    return-void
.end method

.method protected reload()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$200(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->dataLoader:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$300(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
