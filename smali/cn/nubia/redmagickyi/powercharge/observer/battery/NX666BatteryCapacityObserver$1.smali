.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;
.super Ljava/lang/Object;
.source "NX666BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;I)I

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
