.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;
.super Ljava/lang/Object;
.source "RedmagicBroadcastSceneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;)V
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

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$position:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iget-object v2, v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    iget v3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$position:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    iget-object v4, v4, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v0, p1, v2, v3, v4}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->onBroadcastSceneRepeatClick(Landroid/view/View;Ljava/util/List;IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 163
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 164
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iget-object v0, v0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 165
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setFocused(Z)V

    .line 167
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setProgress(I)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setFocused(Z)V

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setProgress(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyDataSetChanged()V

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    iget v2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-interface {v0, p1, v1, v2, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->onBroadcastSceneClick(Landroid/view/View;Ljava/util/List;IZ)V

    :cond_4
    return-void
.end method
