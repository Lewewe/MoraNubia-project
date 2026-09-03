.class Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseOnRecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->access$100(Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
