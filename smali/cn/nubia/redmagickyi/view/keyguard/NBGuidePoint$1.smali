.class Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;
.super Ljava/lang/Object;
.source "NBGuidePoint.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->initAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->access$000(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->access$100(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method
