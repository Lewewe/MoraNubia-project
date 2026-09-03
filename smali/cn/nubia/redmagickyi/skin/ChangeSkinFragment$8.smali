.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initStoryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

.field final synthetic val$storyDetail:Landroid/widget/TextView;

.field final synthetic val$storyIndex:Landroid/widget/TextView;

.field final synthetic val$storyTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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

    .line 510
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyTitle:Landroid/widget/TextView;

    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyDetail:Landroid/widget/TextView;

    iput-object p4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyIndex:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoryIntemClick(ILjava/lang/String;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v1, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 518
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v1, v1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyBeansList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getDescribe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->val$storyIndex:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storydetailLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 525
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storydetailLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$8;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->storyAdapter:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
