.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$4;
.super Ljava/lang/Object;
.source "NX669BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->startObserver()V
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

    .line 174
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 178
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    const-string v0, "/sys/class/power_supply/battery/capacity"

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    const-string p0, "BatteryCapacityObserver"

    const-string v0, "mBatteryLevel init err"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
