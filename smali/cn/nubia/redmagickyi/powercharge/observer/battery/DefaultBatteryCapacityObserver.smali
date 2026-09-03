.class Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;
.super Ljava/lang/Object;
.source "DefaultBatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;,
        Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;
    }
.end annotation


# static fields
.field private static final BATTERY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field public static final MSG_NEED_READ_CHARGE_NOTE:I = 0x1

.field public static final NEED_READ_CHARGE_NOTE_TIME:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "BatteryCapacityObserver"


# instance fields
.field private iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

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

.field private mReadFloatCapacityRun:Ljava/lang/Runnable;

.field private mResetPluggedIn:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mDebug:Z

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    .line 39
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 49
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$1;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$5;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    .line 73
    iput-object p3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    .line 74
    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 75
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    .line 76
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CapacityObserver"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$2;

    iget-object p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$2;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$3;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->readChargeNote()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mCallback:Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mResetPluggedIn:Z

    return p0
.end method

.method static synthetic access$1702(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mResetPluggedIn:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)J
    .locals 2

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mNodeBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mNodeBatteryLevel:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->printBatteryLog()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    return p1
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private printBatteryLog()V
    .locals 1

    .line 117
    const-string v0, "BatteryCapacityObserver"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->printBatteryLog(Ljava/lang/String;)V

    return-void
.end method

.method private printBatteryLog(Ljava/lang/String;)V
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
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

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read note  mFastBatteryLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mNodeBatteryLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readChargeNote()V
    .locals 6

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v2, -0x1

    mul-int/2addr v0, v2

    .line 283
    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    .line 284
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x5

    if-eq v3, v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 288
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    invoke-interface {v2, v5, v0, v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;->getChargeType(ZIZ)I

    move-result v2

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "on fastChargeType changed, fastChargeType = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mFastChargeType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isCharging = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    if-eq v2, v0, :cond_3

    .line 296
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$8;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mDebug:Z

    if-eqz v0, :cond_3

    .line 307
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->printBatteryLog()V

    :cond_3
    return-void
.end method

.method private static readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 333
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 342
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

    .line 336
    :goto_0
    :try_start_3
    const-string v2, "BatteryCapacityObserver"

    const-string v3, "read node fail"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 340
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

    .line 342
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    :cond_1
    :goto_3
    throw p0
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

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mDebug:Z

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

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

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

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

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

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mNodeBatteryLevel:I

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

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

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

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getChargeBatteryLevel()I
    .locals 0

    .line 113
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

    return p0
.end method

.method public getChargingType()I
    .locals 0

    .line 224
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    return p0
.end method

.method public getFastChargeBatteryLevel()I
    .locals 0

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;->getHighPrecisionCapacity()I

    move-result p0

    return p0
.end method

.method public isFastCharging()Z
    .locals 1

    .line 109
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

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

    .line 229
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mResetPluggedIn:Z

    .line 230
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->iBatteryCore:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;->onResetPluggedIn()V

    .line 231
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    .line 240
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p1, -0x1

    .line 243
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$7;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 252
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eq p1, p2, :cond_3

    .line 253
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    .line 254
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    :cond_1
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->thread:Landroid/os/HandlerThread;

    .line 105
    iput-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_3

    .line 266
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isNeedReadChargeNote:Z

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->readChargeNote()V

    .line 269
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1f4

    .line 270
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mFastChargeType:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setDefaultBatteryLevel(I)V
    .locals 1

    .line 201
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

    if-eq v0, p1, :cond_0

    .line 202
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryLevel:I

    :cond_0
    return-void
.end method

.method public setShowChargeView(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    return-void
.end method

.method public startObserver()V
    .locals 4

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    .line 137
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    .line 138
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$4;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mReadFloatCapacityRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_1
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver startObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
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

    .line 185
    const-string v0, "BatteryCapacityObserver"

    const-string v1, "FloatCapacityObserver stopObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsWorking:Z

    .line 189
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    .line 190
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

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

    .line 197
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

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateChargingType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->isShowChargeView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mIsPluggedIn:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->mMagicHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$6;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
