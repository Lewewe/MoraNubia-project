.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$3;
.super Ljava/lang/Object;
.source "NebulaOSBatteryCapacityObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
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

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$3;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, -0x1

    .line 108
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
