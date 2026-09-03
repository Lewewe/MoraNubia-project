.class Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;
.super Ljava/lang/Object;
.source "AlarmActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;Lcn/nubia/redmagickyi/skin/bean/MotionBeans;Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V
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

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    iput-object p3, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    iput p4, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    iget-object v1, v1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;->onItemClickToStopPlay(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    iget-object v0, v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 142
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setSelected(Z)V

    .line 144
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$bean:Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;->onItemClickToPlay(Landroid/view/View;I)V

    :cond_4
    return-void
.end method
