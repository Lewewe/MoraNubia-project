.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsChangeSkinUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$6;->val$message:Landroid/os/Message;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7d0

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
