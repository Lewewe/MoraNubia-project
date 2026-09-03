.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;
.super Landroid/os/Handler;
.source "NX669BatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MSG_NEED_READ_CHARGE_NOTE : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Z)Z

    :goto_0
    return-void
.end method
