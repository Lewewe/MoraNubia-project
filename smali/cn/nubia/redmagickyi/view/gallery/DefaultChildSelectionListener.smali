.class public Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;
.super Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;
.source "DefaultChildSelectionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;
    }
.end annotation


# instance fields
.field private final mOnCenterItemClickListener:Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;


# direct methods
.method protected constructor <init>(Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)V

    .line 16
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;

    return-void
.end method

.method public static initCenterItemListener(Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;
    .locals 1

    .line 30
    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;-><init>(Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)V

    return-object v0
.end method


# virtual methods
.method protected onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method protected onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;

    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/gallery/DefaultChildSelectionListener$OnCenterItemClickListener;->onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V

    return-void
.end method
