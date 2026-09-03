.class Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->access$000(Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;)Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;->onScale(FFF)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
