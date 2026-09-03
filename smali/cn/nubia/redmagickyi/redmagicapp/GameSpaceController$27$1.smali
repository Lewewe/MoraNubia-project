.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->onLoadSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2373
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 2386
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 2377
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onResume()V

    const/4 v0, 0x0

    .line 2378
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2379
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 2380
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$27;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    return-void
.end method
