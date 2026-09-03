.class Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;
.super Ljava/lang/Object;
.source "UpCircleMenuLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->backOrPre()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;Landroid/animation/ValueAnimator;)V
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

    .line 311
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->access$002(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;F)F

    .line 316
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->requestLayout()V

    :cond_0
    return-void
.end method
