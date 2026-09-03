.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;
.super Ljava/lang/Object;
.source "NX669BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$DoubleBattery;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;
    }
.end annotation


# static fields
.field private static final BATTERY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final FAST_BATTERY_DOUBLE_PATH:Ljava/lang/String; = "/sys/class/qcom-battery/two_batt_float_capacity"

.field private static final FAST_BATTERY_PATH:Ljava/lang/String; = "/sys/class/qcom-battery/float_capacity"

.field public static final MSG_NEED_READ_CHARGE_NOTE:I = 0x1

.field public static final NEED_READ_CHARGE_NOTE_TIME:I = 0x2710

.field private static final NUBIA_BATTERY_TYPE:Ljava/lang/String; = "/sys/class/qcom-battery/battery_type"

.field private static final NUBIA_VDM_TYPE:Ljava/lang/String; = "/sys/class/qcom-battery/charger_vdm"

.field private static final PLUGGED_IN_TYPE_PATH:Ljava/lang/String; = "/sys/class/qcom-battery/usb_real_type"

.field public static final TAG:Ljava/lang/String; = "BatteryCapacityObserver"


# instance fields
.field private final PLUGGEDIN_ENABLE:Z

.field private iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

.field private isNeedReadChargeNote:Z

.field private isShowChargeView:Z

.field private mBatteryLevel:I

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mFastChargeType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsDoubleBattery:Z

.field private mIsPluggedIn:Z

.field private mIsWorking:Z

.field private mMagicHandler:Landroid/os/Handler;

.field private mNodeBatteryLevel:I

.field private mPluggedInType:I

.field private mReadFloatCapacityRun:Ljava/lang/Runnable;

.field private mResetPluggedIn:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/qcom-battery/usb_real_type"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->PLUGGEDIN_ENABLE:Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mDebug:Z

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    .line 55
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    .line 56
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    .line 58
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$5;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    .line 90
    iput-object p3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    .line 91
    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 92
    const-string p1, "/sys/class/qcom-battery/battery_type"

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsDoubleBattery:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 93
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$DoubleBattery;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$DoubleBattery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$1;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$1;)V

    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    .line 94
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapacityObserver"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;

    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$2;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$3;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readChargeNote()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)J
    .locals 2

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mResetPluggedIn:Z

    return p0
.end method

.method static synthetic access$1802(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mResetPluggedIn:Z

    return p1
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsDoubleBattery:Z

    return p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Landroid/os/BatteryManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->printBatteryLog()V

    return-void
.end method

.method public static available()Z
    .locals 4

    .line 127
    const-string v0, "/sys/class/qcom-battery/battery_type"

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 130
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/qcom-battery/two_batt_float_capacity"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 134
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/qcom-battery/float_capacity"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private printBatteryLog()V
    .locals 1

    .line 151
    const-string v0, "BatteryCapacityObserver"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->printBatteryLog(Ljava/lang/String;)V

    return-void
.end method

.method private printBatteryLog(Ljava/lang/String;)V
    .locals 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read note  mFastBatteryLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readChargeNote()V
    .locals 13

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v2, -0x1

    mul-int/2addr v0, v2

    .line 323
    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    .line 324
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-eq v3, v1, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    if-lez v0, :cond_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 327
    :goto_0
    const-string v7, "/sys/class/qcom-battery/charger_vdm"

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    .line 328
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 329
    const-string v8, "nubia_120w"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "nubia_165W"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 331
    :cond_2
    const-string v8, "nubia_65w"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 332
    iget-object v8, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v8, v6, v0, v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v8

    goto :goto_3

    .line 333
    :cond_3
    const-string v8, "nubia_none"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_2

    .line 330
    :cond_4
    :goto_1
    iget-object v8, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v8, v5, v0, v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v8

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v6

    .line 339
    :goto_3
    iget-boolean v9, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->PLUGGEDIN_ENABLE:Z

    if-eqz v9, :cond_b

    .line 340
    const-string v9, "/sys/class/qcom-battery/usb_real_type"

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    sparse-switch v10, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v10, "BrickID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v1

    goto :goto_5

    :sswitch_1
    const-string v10, "Unknown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v11

    goto :goto_5

    :sswitch_2
    const-string v10, "SDP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_5

    :sswitch_3
    const-string v10, "WIRELESS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v12

    goto :goto_5

    :sswitch_4
    const-string v10, "PD_PPS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_5

    :cond_6
    :goto_4
    move v9, v2

    :goto_5
    if-eqz v9, :cond_9

    if-eq v9, v5, :cond_8

    if-eq v9, v1, :cond_7

    if-eq v9, v12, :cond_a

    move v1, v6

    goto :goto_6

    :cond_7
    move v1, v5

    goto :goto_6

    :cond_8
    move v1, v12

    goto :goto_6

    :cond_9
    move v1, v11

    .line 360
    :cond_a
    :goto_6
    iget v5, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    if-eq v1, v5, :cond_b

    .line 361
    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    :cond_b
    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    move v2, v8

    .line 371
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "on fastChargeType changed, fastChargeType = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mFastChargeType = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", isCharging = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", vdm = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BatteryCapacityObserver"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    if-eq v2, v1, :cond_e

    .line 373
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    .line 374
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$8;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$8;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mDebug:Z

    if-eqz v1, :cond_d

    .line 384
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->printBatteryLog()V

    .line 387
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fastChargeType= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getChargeTypeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedInDevice= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getPluggedInStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vdm= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentNow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCharging= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPluggedIn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7391aa78 -> :sswitch_4
        -0xcf58862 -> :sswitch_3
        0x1401f -> :sswitch_2
        0x523e442a -> :sswitch_1
        0x6bd9fcfc -> :sswitch_0
    .end sparse-switch
.end method

.method private static readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 478
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 487
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 481
    :goto_0
    :try_start_3
    const-string v2, "BatteryCapacityObserver"

    const-string v3, "read node fail"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 485
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 490
    :cond_1
    :goto_3
    throw p0
.end method


# virtual methods
.method public chargeTypeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 440
    const-string p0, "Unknown"

    return-object p0

    .line 434
    :cond_0
    const-string p0, "120W"

    return-object p0

    .line 436
    :cond_1
    const-string p0, "65w"

    return-object p0

    .line 438
    :cond_2
    const-string p0, "AC"

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FloatCapacityObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isShowChargeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDoubleBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsDoubleBattery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNodeBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFastChargeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getChargeTypeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsPluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPluggedInType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getPluggedInStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 147
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method public getChargeTypeStr()Ljava/lang/String;
    .locals 1

    .line 428
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->chargeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingType()I
    .locals 0

    .line 262
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->getHighPrecisionCapacity()I

    move-result p0

    return p0
.end method

.method public getPluggedInStr()Ljava/lang/String;
    .locals 1

    .line 409
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->pluggedInToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 501
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 502
    const-string v0, "android.os.SystemProperties"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 503
    const-string v0, "get"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 504
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 506
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p2
.end method

.method public isFastCharging()Z
    .locals 1

    .line 143
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPluggedIn(ZZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 267
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mResetPluggedIn:Z

    .line 268
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->onResetPluggedIn()V

    .line 269
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 270
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 278
    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 279
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p2, -0x1

    .line 281
    iput p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    .line 282
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    .line 283
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$7;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$7;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 291
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eq p1, p2, :cond_3

    .line 292
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    .line 293
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 294
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public pluggedInToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 423
    const-string p0, "Unknown"

    return-object p0

    .line 415
    :cond_0
    const-string p0, "PD"

    return-object p0

    .line 417
    :cond_1
    const-string p0, "USB"

    return-object p0

    .line 419
    :cond_2
    const-string p0, "WIRELESS"

    return-object p0

    .line 421
    :cond_3
    const-string p0, "Normal"

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 123
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_3

    .line 305
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isNeedReadChargeNote:Z

    if-eqz v0, :cond_2

    .line 306
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->readChargeNote()V

    .line 308
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1f4

    .line 309
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 312
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 1

    .line 238
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 239
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryLevel:I

    :cond_0
    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 1

    .line 445
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    .line 446
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 447
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$9;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$9;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 454
    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mNodeBatteryLevel:I

    :goto_0
    return-void
.end method

.method public startObserver()V
    .locals 4

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    .line 171
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    .line 172
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$4;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_1
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public statusToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    .line 404
    const-string p0, "Unknown"

    return-object p0

    .line 401
    :cond_0
    const-string p0, "FULL"

    return-object p0

    .line 399
    :cond_1
    const-string p0, "NOT_CHARGING"

    return-object p0

    .line 397
    :cond_2
    const-string p0, "DISCHARGING"

    return-object p0

    .line 395
    :cond_3
    const-string p0, "CHARGING"

    return-object p0
.end method

.method public stopObserver()V
    .locals 2

    .line 219
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsWorking:Z

    .line 223
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    .line 224
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    const/4 v1, -0x1

    .line 225
    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mFastChargeType:I

    .line 226
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mPluggedInType:I

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getFastChargeBatteryLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->savePowerchargeInfo(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public updateChargingType()V
    .locals 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateChargingType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$6;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
