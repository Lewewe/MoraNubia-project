.class public abstract Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;
.super Ljava/lang/Object;
.source "BaseCarouselChildSelectionListener.java"


# instance fields
.field private final mCarouselLayoutManager:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;-><init>(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mCarouselLayoutManager:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    .line 33
    new-instance p2, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$2;-><init>(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mCarouselLayoutManager:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method protected abstract onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V
.end method

.method protected abstract onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V
.end method
