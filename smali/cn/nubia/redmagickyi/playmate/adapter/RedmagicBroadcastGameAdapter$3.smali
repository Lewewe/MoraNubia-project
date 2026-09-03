.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;
.super Ljava/lang/Object;
.source "RedmagicBroadcastGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;)V
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

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$position:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$200(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setFocused(Z)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setFocused(Z)V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;->val$holder:Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result p0

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;->onBroadcastGameClick(Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method
