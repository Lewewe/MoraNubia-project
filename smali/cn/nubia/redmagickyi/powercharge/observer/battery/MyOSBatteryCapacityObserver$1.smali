.class Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;
.super Ljava/lang/Object;
.source "MyOSBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;I)I

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
