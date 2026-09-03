.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$6;
.super Ljava/lang/Object;
.source "NX669BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->updateChargingType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    return-void
.end method
