.class public Lcn/nubia/redmagickyi/care/manager/BatteryListener;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;,
        Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryListener"


# instance fields
.field private mBatteryStateListener:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

.field private mContext:Landroid/content/Context;

.field private mIsPowerConnect:Z

.field private mReceiver:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "Gallery"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mIsPowerConnect:Z

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcn/nubia/redmagickyi/care/manager/BatteryListener;Lcn/nubia/redmagickyi/care/manager/BatteryListener$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mReceiver:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mIsPowerConnect:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/care/manager/BatteryListener;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mIsPowerConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mBatteryStateListener:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    return-object p0
.end method


# virtual methods
.method public register(Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;)V
    .locals 2

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mBatteryStateListener:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    .line 31
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mReceiver:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mReceiver:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 37
    const-string p0, "BatteryListener"

    const-string p1, "battery register done"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mReceiver:Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    const-string p0, "BatteryListener"

    const-string v0, "battery unregister done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
