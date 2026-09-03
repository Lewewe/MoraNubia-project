.class public interface abstract Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.super Ljava/lang/Object;
.source "IChargeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    }
.end annotation


# static fields
.field public static final CHARGE_TYPE_FAST:I = 0x1

.field public static final CHARGE_TYPE_MAX120:I = 0x2

.field public static final CHARGE_TYPE_NORMAL:I = 0x0

.field public static final CHARGE_TYPE_UNKNOWN:I = -0x1

.field public static final PLUGGED_IN_TYPE_BRICK_ID:I = 0x1

.field public static final PLUGGED_IN_TYPE_PD_PPS:I = 0x4

.field public static final PLUGGED_IN_TYPE_SDP:I = 0x3

.field public static final PLUGGED_IN_TYPE_UNKNOWN:I = 0x0

.field public static final PLUGGED_IN_TYPE_WIRELESS:I = 0x2


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getChargeBatteryLevel()I
.end method

.method public abstract getChargingType()I
.end method

.method public abstract getFastChargeBatteryLevel()I
.end method

.method public abstract isFastCharging()Z
.end method

.method public abstract onPluggedIn(ZZ)V
.end method

.method public abstract release()V
.end method

.method public abstract setDefaultBatteryLevel(I)V
.end method

.method public abstract setShowChargeView(Z)V
.end method

.method public abstract startObserver()V
.end method

.method public abstract stopObserver()V
.end method

.method public abstract updateChargingType()V
.end method
