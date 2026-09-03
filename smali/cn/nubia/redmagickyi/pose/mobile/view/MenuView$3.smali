.class Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 220
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;Z)V

    .line 222
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object p2

    .line 224
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$400(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$302(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;Ljava/util/List;)Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 225
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 229
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$500(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 233
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$400(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p2

    const-string v0, "ar_image_item"

    invoke-virtual {p2, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;->onClickCharactorClick(Ljava/lang/String;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 0

    .line 208
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method
