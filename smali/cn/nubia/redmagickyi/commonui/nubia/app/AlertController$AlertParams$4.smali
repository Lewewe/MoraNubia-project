.class Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->createListView(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

.field final synthetic val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1247
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1250
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 1251
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1253
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    .line 1254
    invoke-static {p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->access$600(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$4;->val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;

    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p0

    .line 1253
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
