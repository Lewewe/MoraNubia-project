.class Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->createListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

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

    .line 376
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$600(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$400(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
