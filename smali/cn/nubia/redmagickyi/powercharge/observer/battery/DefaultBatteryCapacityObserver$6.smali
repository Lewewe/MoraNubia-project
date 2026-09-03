.class Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$6;
.super Ljava/lang/Object;
.source "DefaultBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->updateChargingType()V
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

    .line 213
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$6;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    return-void
.end method
