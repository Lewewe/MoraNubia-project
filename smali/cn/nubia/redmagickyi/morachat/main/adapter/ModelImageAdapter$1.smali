.class Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;
.super Ljava/lang/Object;
.source "ModelImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;
    }
.end annotation


# instance fields
.field private lastEventAction:I

.field private notifyItemChangedRunnable:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

.field final synthetic val$position:I

.field final synthetic val$skinId:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$position:I

    iput p3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$skinId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->lastEventAction:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;->onItemTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$200(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 92
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->lastEventAction:I

    return v2

    .line 95
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->lastEventAction:I

    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    :cond_2
    move v0, v2

    .line 97
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$300(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 98
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$300(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_4
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$skinId:I

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(IZ)Z

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$position:I

    invoke-interface {v0, p1, v3}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;->onItemClick(Landroid/view/View;I)V

    .line 107
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;

    if-eqz p1, :cond_6

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$200(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$200(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->val$position:I

    invoke-direct {v0, p0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;II)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->notifyItemChangedRunnable:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->lastEventAction:I

    return v2
.end method
