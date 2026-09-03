.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setOnMarginClickListener(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isScrolling:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V
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

    .line 711
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 712
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->isScrolling:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 715
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->isScrolling:Z

    .line 716
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSingleTapUp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->isScrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TechnologyCenterDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->isScrolling:Z

    if-nez v1, :cond_0

    .line 729
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 733
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$8;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move v7, v0

    move v8, v1

    .line 738
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 747
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 748
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 751
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 760
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
