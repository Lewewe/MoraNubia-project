.class Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;
.super Ljava/lang/Object;
.source "ARLivePCMainMenuDialog.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 227
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$200(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$102(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 229
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 230
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 233
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$300(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 237
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onClickCharactorClick(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 0

    .line 213
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    move-result-object p0

    invoke-interface {p0, p3}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onTouchMenuItem(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
