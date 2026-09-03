.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 233
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p1

    .line 234
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 235
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 237
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setPreviewPos(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$402(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Z)Z

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initRightViewStatus(Z)V

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$500(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0, p1, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;IZ)V

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setPreViewSkinId(I)V

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyDataSetChanged()V

    .line 246
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$3;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveFriendLevel(Landroid/content/Context;I)V

    return-void
.end method
