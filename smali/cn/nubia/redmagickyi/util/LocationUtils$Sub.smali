.class public Lcn/nubia/redmagickyi/util/LocationUtils$Sub;
.super Ljava/lang/Object;
.source "LocationUtils$Sub.java"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LocationUtils"

.field private static final UPDATE_INTERVAL_MS:J = 0x493e0L

.field private static address:Ljava/lang/String; = null

.field private static addressInfo:Landroid/location/Address; = null

.field private static failedRetryCounter:I = 0x0

.field private static handler:Landroid/os/Handler; = null

.field private static handlerThread:Landroid/os/HandlerThread; = null

.field private static volatile isStarted:Z = false

.field private static volatile lastUpdateTime:J

.field private static locationManager:Landroid/location/LocationManager;

.field private static mContext:Landroid/content/Context;

.field private static final mLocationListener:Landroid/location/LocationListener;

.field private static runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub$2;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub$2;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onStartUpdate()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->getCurrentLocation()V

    return-void
.end method

.method static synthetic access$200(DD)Landroid/location/Address;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->getAddressFromLocation(DD)Landroid/location/Address;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onCompletedFailed()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    sput-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->address:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Landroid/location/Address;)Landroid/location/Address;
    .locals 0

    .line 20
    sput-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    return-object p0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onSuccess()V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onFailedLocationManagerNotInit()V

    return-void
.end method

.method public static deInit()V
    .locals 2

    .line 180
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handler:Landroid/os/Handler;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method private static getAddress()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->address:Ljava/lang/String;

    return-object v0
.end method

.method private static getAddressFromLocation(DD)Landroid/location/Address;
    .locals 7

    const/4 v0, 0x0

    .line 186
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v6, 0x5

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1, p2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceive-0, e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getAddressInfo()Landroid/location/Address;
    .locals 1

    .line 125
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    return-object v0
.end method

.method private static getCurrentLocation()V
    .locals 4

    .line 105
    const-string v0, "getCurrentLocation"

    const-string v1, "LocationUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "\u4f4d\u7f6e\u4fe1\u606f\u6743\u9650\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onFailedNotPermission()V

    return-void

    .line 112
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 113
    sget-object v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mLocationListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "fused"

    invoke-virtual {v0, v3, v1, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->onFailedLocationManagerNotInit()V

    .line 117
    const-string v0, "LocationManager is null, cannot request location update"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getLocation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->requestUpdate(Z)V

    .line 130
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->address:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocationInfo()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 135
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    if-nez v1, :cond_0

    return-object v0

    .line 138
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v2, "country"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-nez v3, :cond_1

    :try_start_1
    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "province"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "city"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "district"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "town"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "feature"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "location"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "latitude"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 147
    const-string v2, "longitude"

    sget-object v3, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->addressInfo:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->mContext:Landroid/content/Context;

    .line 166
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 167
    sput-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->locationManager:Landroid/location/LocationManager;

    if-nez p0, :cond_0

    .line 169
    const-string p0, "LocationUtils"

    const-string v0, "LocationManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "locationThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 172
    sput-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handlerThread:Landroid/os/HandlerThread;

    .line 173
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 174
    new-instance p0, Landroid/os/Handler;

    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    sput-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handler:Landroid/os/Handler;

    .line 176
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static onCompletedFailed()V
    .locals 5

    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    .line 87
    sget v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 89
    sput v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    return-void

    .line 92
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handler:Landroid/os/Handler;

    sget-object v2, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    sget v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    return-void
.end method

.method private static onFailedLocationManagerNotInit()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    return-void
.end method

.method private static onFailedNotPermission()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    .line 78
    sput v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    return-void
.end method

.method private static onStartUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    return-void
.end method

.method private static onSuccess()V
    .locals 3

    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->lastUpdateTime:J

    .line 99
    sput v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->failedRetryCounter:I

    .line 100
    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handler:Landroid/os/Handler;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestUpdate(Z)V
    .locals 4

    if-nez p0, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->lastUpdateTime:J

    sub-long/2addr v0, v2

    .line 157
    sget-boolean p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->isStarted:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->address:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-wide/32 v2, 0x493e0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    :cond_1
    return-void

    .line 161
    :cond_2
    sget-object p0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->handler:Landroid/os/Handler;

    sget-object v0, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
