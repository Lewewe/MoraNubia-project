.class Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;
.super Ljava/lang/Object;
.source "BezierAnimator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/BezierAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BezierEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private point1:Landroid/graphics/PointF;

.field private point2:Landroid/graphics/PointF;

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/BezierAnimator;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/BezierAnimator;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->this$0:Lcn/nubia/redmagickyi/util/BezierAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point1:Landroid/graphics/PointF;

    .line 94
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point2:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 101
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    .line 107
    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, p1

    iget-object v5, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    mul-float v5, p1, p1

    mul-float/2addr v5, p1

    iget p1, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v5

    add-float/2addr v3, p1

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 112
    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point1:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->point2:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p0

    add-float/2addr v2, v4

    iget p0, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, p0

    add-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 88
    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
