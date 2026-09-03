.class Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 150
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;I)I

    .line 153
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$000(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)I

    move-result v2

    neg-float p1, p4

    float-to-int v4, p1

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
