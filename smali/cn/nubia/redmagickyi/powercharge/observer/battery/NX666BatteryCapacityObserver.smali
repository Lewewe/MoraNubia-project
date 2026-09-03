.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;
.super Ljava/lang/Object;
.source "NX666BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;
    }
.end annotation


# static fields
.field private static final BATTERY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field public static final DEFAULT_EVENT_MATCH:Ljava/lang/String; = "MODALIAS=of:Nqcom,battery_chargerT(null)Cqcom,battery-charger"

.field public static final GALLERY_BUTTON_DEBUG:Ljava/lang/String; = "cn.nubia.lockscreen.gallery_function"

.field public static final MSG_NEED_READ_CHARGE_NOTE:I = 0x1

.field public static final NEED_READ_CHARGE_NOTE_TIME:I = 0x2710

.field private static final NUBIA_VDM_NX666J:Ljava/lang/String; = "/sys/class/qcom-battery/oem_charger_type"

.field public static final TAG:Ljava/lang/String; = "BatteryCapacityObserver"


# instance fields
.field private iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

.field private isNeedReadChargeNote:Z

.field private isShowBatteryByFrame:Z

.field private isShowChargeView:Z

.field private isUEventNotNull:Z

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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mDebug:Z

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    .line 44
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    .line 46
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 56
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isUEventNotNull:Z

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$5;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    .line 88
    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 89
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    .line 90
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapacityObserver"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$2;

    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$2;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$3;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mChargeType:I

    return p0
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mChargeType:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/os/BatteryManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->readChargeNote()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isUEventNotNull:Z

    return p0
.end method

.method static synthetic access$1902(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isUEventNotNull:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mResetPluggedIn:Z

    return p0
.end method

.method static synthetic access$2002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mResetPluggedIn:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowBatteryByFrame:Z

    return p0
.end method

.method static synthetic access$2202(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowBatteryByFrame:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mNodeBatteryLevel:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->printBatteryLog()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p1
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private printBatteryLog()V
    .locals 1

    .line 134
    const-string v0, "BatteryCapacityObserver"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->printBatteryLog(Ljava/lang/String;)V

    return-void
.end method

.method private printBatteryLog(Ljava/lang/String;)V
    .locals 5

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
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

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CHARGE_COUNTER="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CURRENT_NOW="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CURRENT_AVERAGE="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CAPACITY="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ENERGY_COUNTER="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "STATUS="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

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

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read note  mFastBatteryLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readChargeNote()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v2, -0x1

    mul-int/2addr v0, v2

    .line 301
    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    .line 302
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

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

    .line 306
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;->getChargeType()I

    move-result v2

    .line 312
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "on fastChargeType changed, fastChargeType = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mFastChargeType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

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

    .line 313
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    if-eq v2, v0, :cond_3

    .line 314
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$8;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mDebug:Z

    if-eqz v0, :cond_3

    .line 325
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->printBatteryLog()V

    :cond_3
    return-void
.end method

.method private static readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 350
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 359
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

    .line 353
    :goto_0
    :try_start_3
    const-string v2, "BatteryCapacityObserver"

    const-string v3, "read node fail"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 357
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

    .line 359
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    :cond_1
    :goto_3
    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 335
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

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isShowChargeView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNodeBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsPluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 130
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method public getChargingType()I
    .locals 0

    .line 240
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;->getHighPrecisionCapacity()I

    move-result p0

    return p0
.end method

.method public isFastCharging()Z
    .locals 3

    .line 123
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mChargeType:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isUEventNotNull:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    if-lt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public onPluggedIn(ZZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 245
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mResetPluggedIn:Z

    .line 246
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 247
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 254
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isUEventNotNull:Z

    .line 255
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 256
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p1, -0x1

    .line 259
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    .line 260
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$7;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$7;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eq v0, p2, :cond_3

    .line 269
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    .line 270
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowBatteryByFrame:Z

    .line 271
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 272
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 119
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_3

    .line 284
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isNeedReadChargeNote:Z

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->readChargeNote()V

    .line 287
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1f4

    .line 288
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 291
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mFastChargeType:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 1

    .line 217
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 218
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryLevel:I

    :cond_0
    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    return-void
.end method

.method public startObserver()V
    .locals 4

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    .line 154
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    .line 155
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$4;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_1
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
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

.method public stopObserver()V
    .locals 2

    .line 200
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsWorking:Z

    .line 204
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    .line 205
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->getFastChargeBatteryLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->savePowerchargeInfo(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
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

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateChargingType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$6;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
