.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;
.super Ljava/lang/Object;
.source "PowerChargeActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->fadeOut(Landroid/view/View;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isUpdated:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Landroid/view/View;)V
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

    .line 499
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 503
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 504
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 506
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->isUpdated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->isUpdated:Z

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    :cond_0
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 511
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
