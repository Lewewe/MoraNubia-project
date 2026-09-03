.class public abstract Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;
.super Ljava/lang/Object;
.source "BaseOnRecyclerItemClickListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$1;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
