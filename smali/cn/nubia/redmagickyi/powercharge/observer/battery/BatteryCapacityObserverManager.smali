.class public Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;
.super Ljava/lang/Object;
.source "BatteryCapacityObserverManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;


# instance fields
.field private handler:Landroid/os/Handler;

.field private observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BatteryCapacityObserverManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->thread:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    .line 22
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto/16 :goto_1

    .line 24
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto/16 :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "729"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "709"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "679"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "659"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 47
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 44
    :pswitch_0
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 41
    :pswitch_1
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX709BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX709BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 38
    :pswitch_2
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 35
    :pswitch_3
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 32
    :pswitch_4
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    goto :goto_1

    .line 29
    :pswitch_5
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xd15a -> :sswitch_5
        0xd176 -> :sswitch_4
        0xd179 -> :sswitch_3
        0xd198 -> :sswitch_2
        0xd480 -> :sswitch_1
        0xd4be -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->getChargeBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getChargingType()I
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->getChargingType()I

    move-result p0

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->getFastChargeBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getObserver()Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    return-object p0
.end method

.method public isFastCharging()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->isFastCharging()Z

    move-result p0

    return p0
.end method

.method public onPluggedIn(ZZ)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->onPluggedIn(ZZ)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->release()V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->thread:Landroid/os/HandlerThread;

    .line 122
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->setDefaultBatteryLevel(I)V

    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->setShowChargeView(Z)V

    return-void
.end method

.method public startObserver()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->startObserver()V

    return-void
.end method

.method public stopObserver()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->stopObserver()V

    return-void
.end method

.method public updateChargingType()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->observer:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;->updateChargingType()V

    return-void
.end method
