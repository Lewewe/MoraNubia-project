.class Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$5;
.super Ljava/lang/Object;
.source "MyOSBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->updateChargingType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    return-void
.end method
