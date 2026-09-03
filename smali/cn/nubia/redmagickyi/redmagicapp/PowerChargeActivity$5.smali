.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;
.super Ljava/lang/Object;
.source "PowerChargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->parseMessage(Ljava/lang/String;)V
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

    .line 533
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 536
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$802(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Z)Z

    .line 537
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$600(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getPerviewDuration()J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getDelayedDuration()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->fadeOut(Landroid/view/View;JJ)V

    .line 538
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initSceneOrientation(I)V

    return-void
.end method
