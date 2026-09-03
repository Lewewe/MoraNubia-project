.class Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;
.super Landroid/os/UEventObserver;
.source "MyOSBatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUEvent"
.end annotation


# instance fields
.field private isUEventReceived:Z

.field final synthetic this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->isUEventReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;)Z
    .locals 0

    .line 391
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->isUEventReceived:Z

    return p0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    const-string v0, "BatteryUEvent event "

    if-eqz p1, :cond_0

    .line 405
    :try_start_0
    const-string v1, "capacity"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string v1, "BatteryCapacityObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->this$1:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;->access$2002(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;I)I

    const/4 p1, 0x1

    .line 408
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->isUEventReceived:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 396
    const-string v0, "MODALIAS=of:Nqcom,qpnp-smb5T<NULL>Cqcom,qpnp-smb5"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->startObserving(Ljava/lang/String;)V

    .line 397
    const-string v0, "MODALIAS=of:Nqcom,battery_chargerT(null)Cqcom,battery-charger"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery$BatteryUEvent;->startObserving(Ljava/lang/String;)V

    .line 398
    const-string p0, "BatteryCapacityObserver"

    const-string v0, "BatteryUEvent startObserving"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
