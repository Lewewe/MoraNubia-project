.class Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;
.super Ljava/lang/Object;
.source "FloatSurfaceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/FloatSurfaceView;->startScroll(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

.field final synthetic val$isLeft:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/FloatSurfaceView;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$isLeft:Z

    iput p3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$isLeft:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$300(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$start:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    float-to-int p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$start:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$300(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$000(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->val$start:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$300(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 155
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
