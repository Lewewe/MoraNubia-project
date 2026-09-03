.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;
.super Ljava/lang/Object;
.source "NebulaOSBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 65
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$IBatteryCore;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;I)I

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
