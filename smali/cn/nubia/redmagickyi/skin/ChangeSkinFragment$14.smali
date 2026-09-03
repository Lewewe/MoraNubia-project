.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

.field final synthetic val$skins:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Ljava/util/List;)V
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

    .line 776
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->val$skins:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkinIntemClick(I)V
    .locals 5

    .line 779
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 780
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$402(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Z)Z

    .line 781
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->val$skins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 782
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->val$skins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 783
    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->val$skins:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 784
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setPreViewSkinId(I)V

    .line 785
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setPreviewPos(I)V

    .line 786
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyDataSetChanged()V

    .line 787
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$500(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 791
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    .line 792
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1, v0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;IZ)V

    .line 793
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$14;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initRightViewStatus(Z)V

    return-void
.end method
