.class public Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;
.super Ljava/lang/Object;
.source "NetStatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;,
        Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;
    }
.end annotation


# static fields
.field private static NETWORK_2G:I = 0x2

.field private static NETWORK_3G:I = 0x3

.field private static NETWORK_4G:I = 0x4

.field public static final NETWORK_MOBILE:I = 0x0

.field public static final NETWORK_NONE:I = -0x1

.field private static NETWORK_UNKNOW:I = -0x1

.field private static final NETWORK_WIFI:I = 0x1

.field public static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public listener:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;

.field netBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;

.field private netType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final getMobileNetType(Landroid/content/Context;)I
    .locals 1

    .line 133
    const-string v0, "phone"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 135
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 137
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->getNetworkClass(I)I

    move-result p0

    return p0
.end method

.method public static getNetWorkState(Landroid/content/Context;)I
    .locals 3

    .line 35
    const-string v0, "connectivity"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private static final getNetworkClass(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 169
    sget p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->NETWORK_UNKNOW:I

    return p0

    .line 167
    :pswitch_0
    sget p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->NETWORK_4G:I

    return p0

    .line 165
    :pswitch_1
    sget p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->NETWORK_3G:I

    return p0

    .line 155
    :pswitch_2
    sget p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->NETWORK_2G:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public NetregisterReceiver()V
    .locals 3

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;-><init>(Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->netBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->context:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->netBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public UNregisterNetReceiver()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->netBroadcastReceiver:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public isNetConnect()Z
    .locals 1

    .line 112
    iget p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->netType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setNetChangeListener(Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->listener:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;

    return-void
.end method
