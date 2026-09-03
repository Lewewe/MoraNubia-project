.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;
.super Landroid/content/BroadcastReceiver;
.source "NX669BatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;
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

    .line 195
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 198
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 199
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 200
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    mul-int/2addr v0, v2

    div-int/2addr v0, p2

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;I)I

    .line 201
    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->onPluggedIn(ZZ)V

    :cond_0
    return-void
.end method
