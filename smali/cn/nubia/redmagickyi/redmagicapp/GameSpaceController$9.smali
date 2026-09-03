.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/view/View;)V
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

    .line 761
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;->val$view:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$9;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
