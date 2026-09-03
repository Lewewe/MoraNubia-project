.class final Lcn/nubia/redmagickyi/care/loopview/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/LoopViewGestureListener;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopViewGestureListener;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->scrollBy(F)V

    const/4 p0, 0x1

    return p0
.end method
