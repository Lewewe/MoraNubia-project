.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initFriendValueLayoutState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1873
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1876
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setVisibility(I)V

    .line 1879
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1880
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$20;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
