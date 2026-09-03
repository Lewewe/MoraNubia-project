.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;
.super Ljava/lang/Object;
.source "PowerChargeActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargeStateChange(ZI)V
    .locals 1

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "chargeType changed, now is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerChargeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$002(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;I)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->removeMessages(I)V

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
