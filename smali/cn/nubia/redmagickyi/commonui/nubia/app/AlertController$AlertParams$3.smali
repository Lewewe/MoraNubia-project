.class Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V
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

    .line 1237
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

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

    .line 1240
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->access$600(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1241
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    .line 1242
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$3;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->access$600(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
