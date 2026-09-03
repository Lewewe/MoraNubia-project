.class Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;
.super Ljava/lang/Object;
.source "MyOSBatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;
    }
.end annotation


# static fields
.field private static final BATTERY_CHANGED_EVENT_NAME:Ljava/lang/String; = "capacity"

.field private static final BATTERY_CHANGED_EVENT_PATH:Ljava/lang/String; = "MODALIAS=of:Nqcom,qpnp-smb5T<NULL>Cqcom,qpnp-smb5"

.field public static final MSG_NEED_READ_CHARGE_NOTE:I = 0x1

.field public static final NEED_READ_CHARGE_NOTE_TIME:I = 0x2710

.field private static final QCOM_8350_BATTERY_CHANGED_EVENT_PATH:Ljava/lang/String; = "MODALIAS=of:Nqcom,battery_chargerT(null)Cqcom,battery-charger"

.field public static final TAG:Ljava/lang/String; = "BatteryCapacityObserver"


# instance fields
.field private iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

.field private isNeedReadChargeNote:Z

.field private isShowChargeView:Z

.field private mBatteryLevel:I

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

.field private mChargeType:I

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mFastChargeType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPluggedIn:Z

.field private mIsWorking:Z

.field private mMagicHandler:Landroid/os/Handler;

.field private mNodeBatteryLevel:I

.field private mReadFloatCapacityRun:Ljava/lang/Runnable;

.field private mResetPluggedIn:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mDebug:Z

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    .line 39
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 55
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$4;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    .line 81
    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 82
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapacityObserver"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$2;

    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$2;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$3;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mChargeType:I

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mChargeType:I

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Landroid/os/BatteryManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->readChargeNote()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)J
    .locals 2

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mNodeBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mNodeBatteryLevel:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->printBatteryLog()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p1
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private printBatteryLog()V
    .locals 1

    .line 128
    const-string v0, "BatteryCapacityObserver"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->printBatteryLog(Ljava/lang/String;)V

    return-void
.end method

.method private printBatteryLog(Ljava/lang/String;)V
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
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

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CHARGE_COUNTER="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CURRENT_NOW="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CURRENT_AVERAGE="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CAPACITY="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ENERGY_COUNTER="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "STATUS="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read note  mFastBatteryLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readChargeNote()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v2, -0x1

    mul-int/2addr v0, v2

    .line 284
    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    .line 285
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v4, :cond_1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x5

    if-eq v3, v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->getChargeType()I

    move-result v2

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "on fastChargeType changed, fastChargeType = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mFastChargeType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isCharging = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    if-eq v2, v0, :cond_3

    .line 297
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$7;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mDebug:Z

    if-eqz v0, :cond_3

    .line 308
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->printBatteryLog()V

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 318
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

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isShowChargeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNodeBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsPluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 124
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method public getChargingType()I
    .locals 0

    .line 225
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->getHighPrecisionCapacity()I

    move-result p0

    return p0
.end method

.method public isFastCharging()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->isOvertime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$IBatteryCore;->isUEventReceived()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 119
    :cond_1
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mChargeType:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public onPluggedIn(ZZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 230
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mResetPluggedIn:Z

    .line 231
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 240
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p1, -0x1

    .line 243
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$6;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$6;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 252
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eq p1, p2, :cond_3

    .line 253
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    .line 254
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 112
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_3

    .line 267
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isNeedReadChargeNote:Z

    if-eqz v0, :cond_2

    .line 268
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->readChargeNote()V

    .line 270
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1f4

    .line 271
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mFastChargeType:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 1

    .line 202
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 203
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryLevel:I

    :cond_0
    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    return-void
.end method

.method public startObserver()V
    .locals 4

    .line 145
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    .line 149
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopObserver()V
    .locals 2

    .line 184
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsWorking:Z

    .line 188
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    .line 189
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->getFastChargeBatteryLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->savePowerchargeInfo(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 194
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    :goto_0
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
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

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateChargingType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver$5;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/MyOSBatteryCapacityObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
