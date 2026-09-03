.class Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewEmptySupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->access$000(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->access$000(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->access$000(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;->this$0:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
