.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;
.super Ljava/lang/Object;
.source "NebulaOSBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->readChargeNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$IBatteryCore;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;I)I

    .line 329
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)I

    move-result p0

    invoke-interface {v0, v2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;->onChargeStateChange(ZI)V

    :cond_1
    return-void
.end method
