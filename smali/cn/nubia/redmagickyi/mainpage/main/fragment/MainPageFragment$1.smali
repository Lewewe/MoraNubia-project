.class Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;
.super Ljava/lang/Object;
.source "MainPageFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$opCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;->val$opCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;->val$opCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onAnimationCallback(ZZ)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment$1;->val$opCallback:Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;->onHideFragment()V

    :cond_0
    return-void
.end method
