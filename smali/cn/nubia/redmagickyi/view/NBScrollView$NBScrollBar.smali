.class public Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;
.super Landroid/view/View;
.source "NBScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/NBScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NBScrollBar"
.end annotation


# instance fields
.field private scrollExtent:I

.field private scrollOffset:I

.field private scrollRange:I

.field private scrollView:Lcn/nubia/redmagickyi/view/NBScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public bind(Lcn/nubia/redmagickyi/view/NBScrollView;)Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollView:Lcn/nubia/redmagickyi/view/NBScrollView;

    return-object p0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollView:Lcn/nubia/redmagickyi/view/NBScrollView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/NBScrollView;->getScrollExtent()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollExtent:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollView:Lcn/nubia/redmagickyi/view/NBScrollView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/NBScrollView;->getScrollOffset()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollView:Lcn/nubia/redmagickyi/view/NBScrollView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/NBScrollView;->getScrollRange()I

    move-result v0

    .line 129
    iget v1, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollRange:I

    if-eq v1, v0, :cond_0

    .line 130
    iput v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollRange:I

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->update()V

    .line 133
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollRange:I

    return p0
.end method

.method public setScrollExtent(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollExtent:I

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollOffset:I

    return-void
.end method

.method public setScrollRange(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->scrollRange:I

    return-void
.end method

.method public update()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->awakenScrollBars()Z

    return-void
.end method
