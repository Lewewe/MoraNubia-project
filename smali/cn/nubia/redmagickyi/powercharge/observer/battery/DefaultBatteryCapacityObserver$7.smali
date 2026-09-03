.class Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;
.super Ljava/lang/Object;
.source "DefaultBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->onPluggedIn(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;->onChargeStateChange(ZI)V

    :cond_0
    return-void
.end method
