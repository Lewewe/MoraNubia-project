.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;
.super Landroid/os/UEventObserver;
.source "NX666BatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUEvent"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryUEvent event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "capacity"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryCapacityObserver"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 480
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    iget-object v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1902(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z

    .line 481
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    iget-object v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$2202(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z

    .line 483
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2302(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I

    .line 485
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)D

    move-result-wide v0

    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I

    move-result p1

    int-to-double v3, p1

    sub-double/2addr v0, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double p1, v0, v3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 486
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z

    .line 487
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2602(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z

    .line 488
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2702(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I

    .line 489
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2808(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I

    move-result p1

    int-to-double v5, p1

    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double p1, v5, v3

    if-lez p1, :cond_1

    .line 491
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2602(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z

    .line 492
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z

    .line 493
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2802(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I

    .line 494
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2708(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I

    goto :goto_0

    .line 496
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->access$2900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 472
    const-string v0, "MODALIAS=of:Nqcom,battery_chargerT(null)Cqcom,battery-charger"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->startObserving(Ljava/lang/String;)V

    .line 473
    const-string p0, "BatteryCapacityObserver"

    const-string v0, "BatteryUEvent startObserving MODALIAS=of:Nqcom,battery_chargerT(null)Cqcom,battery-charger"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
