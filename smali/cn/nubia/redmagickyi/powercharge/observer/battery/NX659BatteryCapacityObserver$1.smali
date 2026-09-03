.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;
.super Ljava/lang/Object;
.source "NX659BatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$IBatteryCore;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;I)I

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
