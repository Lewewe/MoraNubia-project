.class Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;
.super Landroid/widget/FrameLayout;
.source "FloatWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;
    }
.end annotation


# instance fields
.field private onInterceptTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 592
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->onInterceptTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->onInterceptTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setOnInterceptTouchListener(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->onInterceptTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;

    return-void
.end method
