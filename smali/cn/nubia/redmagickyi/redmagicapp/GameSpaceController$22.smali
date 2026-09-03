.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onMotionComing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field final synthetic val$motionId:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V
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

    .line 1993
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iput p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;->val$motionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1996
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->hideModelMotionSubtitle()V

    .line 1997
    sget-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    if-nez v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$22;->val$motionId:I

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V

    :cond_0
    return-void
.end method
