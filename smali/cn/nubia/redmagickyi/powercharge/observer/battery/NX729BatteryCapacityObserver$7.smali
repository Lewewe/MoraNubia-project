.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;
.super Ljava/lang/Object;
.source "NX729BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->onPluggedIn(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;->onChargeStateChange(ZI)V

    :cond_0
    return-void
.end method
