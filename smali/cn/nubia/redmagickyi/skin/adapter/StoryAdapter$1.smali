.class Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;
.super Ljava/lang/Object;
.source "StoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/model/StoryBeans;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;Lcn/nubia/redmagickyi/model/StoryBeans;ILcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 93
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$bean:Lcn/nubia/redmagickyi/model/StoryBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$position:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$holder:Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$bean:Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iget v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->getItemViewType(I)I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iget v0, v0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_PLACEHOLDER:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 100
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->setSelecte(Z)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$bean:Lcn/nubia/redmagickyi/model/StoryBeans;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/model/StoryBeans;->setSelecte(Z)V

    .line 105
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;

    iget v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;->val$holder:Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->index:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;->onStoryIntemClick(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
