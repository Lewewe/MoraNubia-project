.class Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
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

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fling  mSingleFlingListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-static {}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1600()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1700()I

    move-result v2

    if-gt v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1700()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$1400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;->this$0:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
