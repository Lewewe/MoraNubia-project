.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;
.super Ljava/lang/Object;
.source "PowerChargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$600(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$600(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
