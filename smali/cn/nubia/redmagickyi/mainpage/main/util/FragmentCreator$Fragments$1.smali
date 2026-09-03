.class Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;
.super Ljava/lang/Object;
.source "FragmentCreator.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getOrCreateFragment(Landroid/app/Activity;Landroid/os/Bundle;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$100(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;->getFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    return-object p0
.end method

.method public onAccountInitComplete(Z)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$002(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->access$300(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v2, v2, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onAccountInitComplete(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

.method public performRecreate()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$100(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;->performRecreate()V

    return-void
.end method

.method public reload()V
    .locals 3

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->access$300(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v2, v2, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->performReload()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldChangeBadgeState(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 83
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->access$300(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object v2, v2, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$200(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object v2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$100(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;->shouldShowBadge(I)V

    goto :goto_1

    .line 87
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;->this$1:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$100(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Callback;->shouldHideBadge(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
