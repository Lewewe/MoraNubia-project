.class Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;
.super Ljava/lang/Object;
.source "TrainingWordContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$000(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;FLandroid/widget/FrameLayout;)V

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$200(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;FLandroid/widget/FrameLayout;)V

    return-void
.end method
