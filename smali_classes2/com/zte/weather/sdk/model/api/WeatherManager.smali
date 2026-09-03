.class public Lcom/zte/weather/sdk/model/api/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.zte.mifavor.weather.ACTION_GET_WEATHER"

.field private static final MAX_RECONECTION_TIMES:I = 0x3

.field private static final MAX_TIMEOUT_MILLS:I = 0x3e8

.field private static final PACAKGE_NAME:Ljava/lang/String; = "com.zte.mifavor.weather"

.field public static final TAG:Ljava/lang/String; = "WeatherManager"


# instance fields
.field private api:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/zte/weather/sdk/model/api/IWeather;",
            ">;"
        }
    .end annotation
.end field

.field private apiConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsBinded:Z

.field private mListener:Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

.field private final mLock:Ljava/lang/Object;

.field private mReconnectionTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mReconnectionTimes:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;

    invoke-direct {v0, p0}, Lcom/zte/weather/sdk/model/api/WeatherManager$1;-><init>(Lcom/zte/weather/sdk/model/api/WeatherManager;)V

    iput-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->apiConnection:Landroid/content/ServiceConnection;

    .line 71
    const-string v0, "WeatherManager"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/weather/sdk/model/api/WeatherManager;Lcom/zte/weather/sdk/model/api/IWeather;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->setApi(Lcom/zte/weather/sdk/model/api/IWeather;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/weather/sdk/model/api/WeatherManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->notifyToContinue()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/weather/sdk/model/api/WeatherManager;)Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mListener:Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/weather/sdk/model/api/WeatherManager;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mReconnectionTimes:I

    return p0
.end method

.method static synthetic access$302(Lcom/zte/weather/sdk/model/api/WeatherManager;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mReconnectionTimes:I

    return p1
.end method

.method static synthetic access$308(Lcom/zte/weather/sdk/model/api/WeatherManager;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mReconnectionTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mReconnectionTimes:I

    return v0
.end method

.method private notifyToContinue()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setApi(Lcom/zte/weather/sdk/model/api/IWeather;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setApi:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private waitServiceToConnect()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isServiceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 124
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .line 80
    const-string v0, "connect()"

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string v2, "com.zte.mifavor.weather"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "com.zte.mifavor.weather.ACTION_GET_WEATHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bind weather Service --> result:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disconnect()V
    .locals 6

    .line 90
    const-string v0, "WeatherManager"

    .line 0
    const-string v1, "unbind "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 90
    :try_start_0
    const-string v4, "disconnect weather service"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    invoke-direct {p0, v3}, Lcom/zte/weather/sdk/model/api/WeatherManager;->setApi(Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 96
    iput-boolean v2, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 93
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 95
    :goto_2
    invoke-direct {p0, v3}, Lcom/zte/weather/sdk/model/api/WeatherManager;->setApi(Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 96
    iput-boolean v2, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    .line 97
    throw v0
.end method

.method public fetchDefaultWeather(Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I
    .locals 2

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v1, v0, p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    return p0
.end method

.method public fetchWeatherByLatitudeAndLongitude(Ljava/lang/String;Ljava/lang/String;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I
    .locals 2

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string p1, "LONGITUDE"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1, v0, p3}, Lcom/zte/weather/sdk/model/api/WeatherManager;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    return p0

    .line 184
    :cond_0
    const-string p0, "WeatherManager"

    const-string p1, "fetch weather by lang and long ERROR_INVALID_PARAMS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    return p0
.end method

.method public isBinded()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mIsBinded:Z

    return p0
.end method

.method public isServiceAvailable()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I
    .locals 4

    const-string v0, "request start re-connect  isBinded:"

    const-string v1, "request  isBinded:"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,api: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WeatherManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 136
    const-string p0, "ERROR_NO_CALLBACK"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x7

    return p0

    .line 140
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/api/IWeather;

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/weather/sdk/model/api/IWeather;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    return p0

    .line 143
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isBinded()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const-string v0, "request wait for connected"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->waitServiceToConnect()V

    .line 147
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/api/IWeather;

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/weather/sdk/model/api/IWeather;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    return p0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->connect()V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isBinded()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->waitServiceToConnect()V

    .line 155
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->api:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/api/IWeather;

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/weather/sdk/model/api/IWeather;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    return p0

    .line 161
    :cond_3
    const-string p0, "ERROR_SERVICE_UNAVAILABLE"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x9

    return p0

    :catch_0
    move-exception p0

    .line 165
    const-string p1, "ERROR_REMOTE_EXCEPTION"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 p0, 0x8

    return p0
.end method

.method public setServiceListener(Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager;->mListener:Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    return-void
.end method
