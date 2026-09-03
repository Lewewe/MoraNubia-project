.class public Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;
.super Ljava/lang/Object;
.source "DevicesOIDGetter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DevicesOAIDGetter"

.field private static oaid:Ljava/lang/String;


# instance fields
.field private listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    sput-object p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->isFreeMeOS()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->isSSUIOS()Z

    move-result p0

    return p0
.end method

.method private getBrand()Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method private getID(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "ASUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    :cond_0
    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 72
    :cond_1
    const-string v1, "LENOVO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->getIdRun(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 74
    :cond_2
    const-string v1, "MOTOLORA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->getIdRun(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 76
    :cond_3
    const-string v1, "MEIZU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->getMeizuID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 78
    :cond_4
    const-string v1, "NUBIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;->getNubiaID()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 80
    :cond_5
    const-string v1, "OPPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :cond_6
    const-string v1, "SAMSUNG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->getSumsungID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 84
    :cond_7
    const-string v1, "VIVO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->getOaid()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 86
    :cond_8
    const-string v1, "XIAOMI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->getOAID()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 88
    :cond_9
    const-string v1, "BLACKSHARK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->getOAID()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 90
    :cond_a
    const-string v1, "ONEPLUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_b
    const-string v1, "ZTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_c
    const-string v1, "FERRMEOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->isFreeMeOS()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    .line 96
    :cond_d
    const-string v1, "SSUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->isSSUIOS()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 97
    :cond_e
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_f
    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    .line 104
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    if-eqz p0, :cond_12

    .line 105
    invoke-interface {p0, p1, v0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method private getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;-><init>(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 0

    .line 44
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 115
    :cond_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 117
    const-string v2, "unknown"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    .line 119
    :catch_0
    const-string p1, "DevicesOAIDGetter"

    const-string v0, "getProperty failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 2

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    new-instance v1, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$1;

    invoke-direct {v1, p1}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$1;-><init>(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;-><init>(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    .line 56
    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getID(Landroid/content/Context;)V

    return-void
.end method

.method private isFreeMeOS()Z
    .locals 1

    .line 125
    const-string v0, "ro.build.freeme.label"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FREEMEOS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSSUIOS()Z
    .locals 1

    .line 133
    const-string v0, "ro.ssui.product"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
