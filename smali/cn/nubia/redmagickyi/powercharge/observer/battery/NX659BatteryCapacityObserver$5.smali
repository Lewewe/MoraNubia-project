.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;
.super Landroid/content/BroadcastReceiver;
.source "NX659BatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 188
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    mul-int/2addr v0, v3

    div-int/2addr v0, p2

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;I)I

    .line 189
    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/os/BatteryManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "battery status is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->onPluggedIn(ZZ)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 194
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$5;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->onPluggedIn(ZZ)V

    :cond_2
    :goto_1
    return-void
.end method
