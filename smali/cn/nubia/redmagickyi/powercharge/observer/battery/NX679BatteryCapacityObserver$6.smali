.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver$6;
.super Ljava/lang/Object;
.source "NX679BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;->updateChargingType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 240
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;)V

    return-void
.end method
