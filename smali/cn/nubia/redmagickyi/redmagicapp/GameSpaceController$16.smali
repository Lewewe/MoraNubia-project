.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->MainPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field final synthetic val$parentContainer:Landroid/view/View;


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

    .line 1313
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->val$parentContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 3

    .line 1316
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 1317
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1318
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1319
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->val$parentContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1320
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->val$parentContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1323
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->isHaveNew()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicDanceStudioDataManager;->isHaveNew()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->hideMainPageUnreadDot()V

    goto :goto_1

    .line 1324
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$16;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->showMainPageUnreadDot()V

    :cond_2
    :goto_1
    return-void
.end method
