.class Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;
.super Ljava/lang/Object;
.source "BaseCarouselChildSelectionListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$000(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$100(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$000(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$100(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$000(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$100(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/view/View;)V

    :goto_0
    return-void
.end method
