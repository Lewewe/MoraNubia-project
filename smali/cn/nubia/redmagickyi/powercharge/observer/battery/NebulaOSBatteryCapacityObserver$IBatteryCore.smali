.class interface abstract Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver$IBatteryCore;
.super Ljava/lang/Object;
.source "NebulaOSBatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NebulaOSBatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IBatteryCore"
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getChargeType()I
.end method

.method public abstract getHighPrecisionCapacity()I
.end method

.method public abstract isOvertime()Z
.end method

.method public abstract isUEventReceived()Z
.end method

.method public abstract readNode(Z)I
.end method
