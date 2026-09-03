.class interface abstract Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver$IBatteryCore;
.super Ljava/lang/Object;
.source "NX679BatteryCapacityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX679BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IBatteryCore"
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getChargeType(ZIZ)I
.end method

.method public abstract getHighPrecisionCapacity()I
.end method

.method public abstract onResetPluggedIn()V
.end method

.method public abstract readNode(Z)I
.end method

.method public abstract updateTempNodeValue()V
.end method
