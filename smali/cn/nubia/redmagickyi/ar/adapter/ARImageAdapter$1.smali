.class Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;
.super Ljava/lang/Object;
.source "ARImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;
    }
.end annotation


# instance fields
.field private lastEventAction:I

.field private notifyItemChangedRunnable:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;

.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 126
    iput p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->lastEventAction:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;->onItemTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isMoreImagesDialog()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 135
    iput v1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->lastEventAction:I

    return v2

    .line 138
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$300(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 139
    iput v1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->lastEventAction:I

    return v3

    .line 142
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->lastEventAction:I

    if-nez v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    :cond_3
    move v0, v3

    .line 144
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$400(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 145
    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$400(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 146
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->isHasCheck()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v0

    .line 149
    :cond_4
    iget v4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->val$position:I

    if-ne v0, v4, :cond_5

    .line 150
    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$400(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 152
    :cond_5
    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$400(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    iget v2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->val$position:I

    invoke-interface {v0, p1, v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;->onItemClick(Landroid/view/View;I)V

    .line 158
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;

    if-eqz p1, :cond_8

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$300(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$300(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;

    iget v2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->val$position:I

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;-><init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;II)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1$NotifyItemChangedRunnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;->lastEventAction:I

    return v3
.end method
