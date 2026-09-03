.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;
.super Ljava/lang/Object;
.source "NX729BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;
    }
.end annotation


# static fields
.field private static final BATTERY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final MAX_BATTERY_PATH:Ljava/lang/String; = "/sys/class/qcom-battery/float_capacity"

.field public static final MSG_NEED_READ_CHARGE_NOTE:I = 0x1

.field public static final NEED_READ_CHARGE_NOTE_TIME:I = 0x2710

.field private static final NUBIA_BOARD_TYPE:Ljava/lang/String; = "/sys/class/qcom-battery/board_type"

.field private static final NUBIA_VDM_TYPE:Ljava/lang/String; = "/sys/class/qcom-battery/charger_vdm"

.field private static final PLUGGED_IN_TYPE_PATH:Ljava/lang/String; = "/sys/class/qcom-battery/usb_real_type"

.field public static final TAG:Ljava/lang/String; = "BatteryCapacityObserver"


# instance fields
.field private final PLUGGEDIN_ENABLE:Z

.field private final boardType:Ljava/lang/String;

.field private iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "/sys/class/qcom-battery/board_type"

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->boardType:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/qcom-battery/usb_real_type"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->PLUGGEDIN_ENABLE:Z

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mDebug:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    .line 54
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    .line 55
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    .line 57
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 65
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$5;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    .line 90
    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 91
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    .line 92
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapacityObserver"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$2;

    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$2;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$3;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I
    .locals 0

    .line 36
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readChargeNote()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I
    .locals 0

    .line 36
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mResetPluggedIn:Z

    return p0
.end method

.method static synthetic access$1702(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mResetPluggedIn:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)J
    .locals 2

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I
    .locals 0

    .line 36
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->printBatteryLog()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p1
.end method

.method public static available()Z
    .locals 2

    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/qcom-battery/float_capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isInternalVersion()Z
    .locals 1

    .line 401
    const-string p0, "sys.nubia_internal_version_flag"

    const-string v0, "0"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private printBatteryLog()V
    .locals 1

    .line 138
    const-string v0, "BatteryCapacityObserver"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->printBatteryLog(Ljava/lang/String;)V

    return-void
.end method

.method private printBatteryLog(Ljava/lang/String;)V
    .locals 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
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

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read note  mFastBatteryLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readChargeNote()V
    .locals 15

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 310
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    .line 311
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-eq v2, v1, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    if-lez v0, :cond_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 314
    :goto_0
    const-string v6, "/sys/class/qcom-battery/charger_vdm"

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    .line 315
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 316
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isInternalVersion()Z

    move-result v7

    const-string v8, "nubia_none"

    const-string v9, "nubia_165w"

    const-string v10, "nubia_80w"

    const-string v11, "nubia_30w"

    const-string v12, "nubia_120w"

    const-string v13, "nubia_65w"

    if-eqz v7, :cond_5

    .line 318
    invoke-static {v13, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 320
    :cond_2
    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 321
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v7, v5, v0, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v7

    goto/16 :goto_6

    .line 322
    :cond_3
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    goto/16 :goto_5

    .line 319
    :cond_4
    :goto_1
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v7, v4, v0, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v7

    goto/16 :goto_6

    .line 326
    :cond_5
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->boardType:Ljava/lang/String;

    const-string v14, "65W"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 328
    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v13, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 330
    :cond_6
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_5

    .line 329
    :cond_7
    :goto_2
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v7, v5, v0, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v7

    goto :goto_6

    .line 335
    :cond_8
    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    .line 337
    :cond_9
    invoke-static {v13, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    .line 339
    :cond_a
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_5

    .line 338
    :cond_b
    :goto_3
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v7, v5, v0, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v7

    goto :goto_6

    .line 336
    :cond_c
    :goto_4
    iget-object v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v7, v4, v0, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v7

    goto :goto_6

    :cond_d
    :goto_5
    move v7, v5

    .line 347
    :goto_6
    iget-boolean v8, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->PLUGGEDIN_ENABLE:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_13

    .line 348
    const-string v8, "/sys/class/qcom-battery/usb_real_type"

    invoke-static {v8}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    sparse-switch v10, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v10, "BrickID"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v1

    goto :goto_8

    :sswitch_1
    const-string v10, "Unknown"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v11

    goto :goto_8

    :sswitch_2
    const-string v10, "SDP"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v4

    goto :goto_8

    :sswitch_3
    const-string v10, "WIRELESS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v12

    goto :goto_8

    :sswitch_4
    const-string v10, "PD_PPS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v5

    goto :goto_8

    :cond_e
    :goto_7
    move v8, v9

    :goto_8
    if-eqz v8, :cond_11

    if-eq v8, v4, :cond_10

    if-eq v8, v1, :cond_f

    if-eq v8, v12, :cond_12

    move v1, v5

    goto :goto_9

    :cond_f
    move v1, v4

    goto :goto_9

    :cond_10
    move v1, v12

    goto :goto_9

    :cond_11
    move v1, v11

    .line 368
    :cond_12
    :goto_9
    iget v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    if-eq v1, v4, :cond_13

    .line 369
    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    :cond_13
    if-nez v3, :cond_14

    move v7, v9

    .line 379
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "on fastChargeType changed, fastChargeType = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mFastChargeType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isCharging = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", vdm = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", boardType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->boardType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BatteryCapacityObserver"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    if-eq v7, v1, :cond_16

    .line 381
    iput v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    .line 382
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v5, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$8;

    invoke-direct {v5, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$8;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mDebug:Z

    if-eqz v1, :cond_15

    .line 392
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->printBatteryLog()V

    .line 395
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "fastChargeType= "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->getChargeTypeStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " pluggedInDevice= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->getPluggedInStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " status= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vdm= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentNow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCharging= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPluggedIn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
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

    .line 481
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 490
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

    .line 484
    :goto_0
    :try_start_3
    const-string v2, "BatteryCapacityObserver"

    const-string v3, "read node fail"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 488
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

    .line 490
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 493
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

    .line 453
    const-string p0, "Unknown"

    return-object p0

    .line 447
    :cond_0
    const-string p0, "120W"

    return-object p0

    .line 449
    :cond_1
    const-string p0, "65w"

    return-object p0

    .line 451
    :cond_2
    const-string p0, "AC"

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 463
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

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isShowChargeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

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

    const-string v1, "mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNodeBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFastChargeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->getChargeTypeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsPluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPluggedInType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->getPluggedInStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 134
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method public getChargeTypeStr()Ljava/lang/String;
    .locals 1

    .line 441
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->chargeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingType()I
    .locals 0

    .line 249
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 231
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->getHighPrecisionCapacity()I

    move-result p0

    return p0
.end method

.method public getPluggedInStr()Ljava/lang/String;
    .locals 1

    .line 422
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->pluggedInToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFastCharging()Z
    .locals 1

    .line 130
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

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

    .line 254
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mResetPluggedIn:Z

    .line 255
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->onResetPluggedIn()V

    .line 256
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 257
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 265
    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p2, -0x1

    .line 268
    iput p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    .line 269
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    .line 270
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$7;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 278
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eq p1, p2, :cond_3

    .line 279
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    .line 280
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 281
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

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

    .line 436
    const-string p0, "Unknown"

    return-object p0

    .line 428
    :cond_0
    const-string p0, "PD"

    return-object p0

    .line 430
    :cond_1
    const-string p0, "USB"

    return-object p0

    .line 432
    :cond_2
    const-string p0, "WIRELESS"

    return-object p0

    .line 434
    :cond_3
    const-string p0, "Normal"

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 121
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_3

    .line 292
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isNeedReadChargeNote:Z

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->readChargeNote()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1f4

    .line 296
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 1

    .line 225
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 226
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryLevel:I

    :cond_0
    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 1

    .line 458
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    .line 459
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;->readNode(Z)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mNodeBatteryLevel:I

    return-void
.end method

.method public startObserver()V
    .locals 4

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    .line 158
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    .line 159
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$4;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_1
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
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

    .line 417
    const-string p0, "Unknown"

    return-object p0

    .line 414
    :cond_0
    const-string p0, "FULL"

    return-object p0

    .line 412
    :cond_1
    const-string p0, "NOT_CHARGING"

    return-object p0

    .line 410
    :cond_2
    const-string p0, "DISCHARGING"

    return-object p0

    .line 408
    :cond_3
    const-string p0, "CHARGING"

    return-object p0
.end method

.method public stopObserver()V
    .locals 2

    .line 206
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsWorking:Z

    .line 210
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    .line 211
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    const/4 v1, -0x1

    .line 212
    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mFastChargeType:I

    .line 213
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mPluggedInType:I

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->getFastChargeBatteryLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->savePowerchargeInfo(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
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

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateChargingType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$6;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
