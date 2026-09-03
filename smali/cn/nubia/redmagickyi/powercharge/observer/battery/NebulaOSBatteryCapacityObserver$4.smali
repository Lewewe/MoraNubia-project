.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;
.super Landroid/content/BroadcastReceiver;
.source "NebulaOSBatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 175
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 177
    iget-object v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    invoke-static {v4, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;I)I

    .line 178
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    const-string v0, "oem_chg_type"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;I)I

    .line 180
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 181
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery status begin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chargeType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryCapacityObserver"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v5, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4$1;

    invoke-direct {v5, p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 193
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x64

    invoke-virtual {p2, v5, v6, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 195
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 197
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "battery status end "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->onPluggedIn(ZZ)V

    goto :goto_2

    .line 199
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$4;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->onPluggedIn(ZZ)V

    :cond_2
    :goto_2
    return-void
.end method
