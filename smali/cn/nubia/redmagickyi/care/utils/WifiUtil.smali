.class public Lcn/nubia/redmagickyi/care/utils/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiUtil"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getChannelByFrequency(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :sswitch_0
    const/16 p0, 0xa5

    goto :goto_0

    :sswitch_1
    const/16 p0, 0xa1

    goto :goto_0

    :sswitch_2
    const/16 p0, 0x9d

    goto :goto_0

    :sswitch_3
    const/16 p0, 0x99

    goto :goto_0

    :sswitch_4
    const/16 p0, 0x95

    goto :goto_0

    :sswitch_5
    const/16 p0, 0xe

    goto :goto_0

    :sswitch_6
    const/16 p0, 0xd

    goto :goto_0

    :sswitch_7
    const/16 p0, 0xc

    goto :goto_0

    :sswitch_8
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_9
    const/16 p0, 0xa

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x9

    goto :goto_0

    :sswitch_b
    const/16 p0, 0x8

    goto :goto_0

    :sswitch_c
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_d
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_e
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_f
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_10
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_11
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_12
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_12
        0x971 -> :sswitch_11
        0x976 -> :sswitch_10
        0x97b -> :sswitch_f
        0x980 -> :sswitch_e
        0x985 -> :sswitch_d
        0x98a -> :sswitch_c
        0x98f -> :sswitch_b
        0x994 -> :sswitch_a
        0x999 -> :sswitch_9
        0x99e -> :sswitch_8
        0x9a3 -> :sswitch_7
        0x9a8 -> :sswitch_6
        0x9b4 -> :sswitch_5
        0x1671 -> :sswitch_4
        0x1685 -> :sswitch_3
        0x1699 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 23
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 24
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWifiInfo.getSSID():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWifiInfo.getSSID() == WifiManager.UNKNOWN_SSID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object p0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->TAG:Ljava/lang/String;

    const-string v0, "getDetailsWifiInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getItemPosition(Ljava/util/List;Landroid/net/wifi/ScanResult;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/ScanResult;",
            ")I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 75
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static is24GOr5GHz(I)Ljava/lang/String;
    .locals 0

    .line 67
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getAroundWifiDeviceInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->context:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 39
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 42
    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getItemPosition(Ljava/util/List;Landroid/net/wifi/ScanResult;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    iget v5, v2, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v5, :cond_0

    .line 45
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
