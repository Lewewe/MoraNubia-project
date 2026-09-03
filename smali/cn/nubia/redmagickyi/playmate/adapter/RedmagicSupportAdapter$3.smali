.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;
.super Ljava/lang/Object;
.source "RedmagicSupportAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;)V
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

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$position:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    iget v2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$position:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    iget-object v3, v3, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;->onSupportGameRepeatClick(Landroid/view/View;IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 91
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 92
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$200(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 93
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setFocused(Z)V

    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setFocused(Z)V

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->notifyDataSetChanged()V

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result p0

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;->onSupportGameClick(Landroid/view/View;IZ)V

    :cond_4
    return-void
.end method
