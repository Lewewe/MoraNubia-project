.class Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;->onDrag(FF)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$600(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$700(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$700(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    .line 118
    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$700(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    .line 119
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$800(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    .line 120
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$800(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I

    move-result p0

    if-ne p0, v2, :cond_7

    cmpg-float p0, p2, v4

    if-gtz p0, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p0, 0x0

    .line 122
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 127
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    new-instance p2, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$902(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;)Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    .line 135
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$900(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p2}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$900(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V

    :cond_2
    return-void
.end method
