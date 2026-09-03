.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1908
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1916
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1911
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$21;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setVisibility(I)V

    return-void
.end method
