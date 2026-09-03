.class public Lcn/nubia/redmagickyi/view/NBScrollView;
.super Landroid/widget/ScrollView;
.source "NBScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;
    }
.end annotation


# instance fields
.field private scrollBar:Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NBScrollView;->scrollBar:Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->update()V

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->awakenScrollBars(IZ)Z

    move-result p0

    return p0
.end method

.method public getScrollExtent()I
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NBScrollView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public getScrollOffset()I
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NBScrollView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public getScrollRange()I
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NBScrollView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public setScrollBar(Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;)V
    .locals 0

    .line 27
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;->bind(Lcn/nubia/redmagickyi/view/NBScrollView;)Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/NBScrollView;->scrollBar:Lcn/nubia/redmagickyi/view/NBScrollView$NBScrollBar;

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/NBScrollView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method
