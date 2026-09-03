.class Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;
.super Ljava/lang/Object;
.source "GetWeatherWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->fetchWeatherByLatitudeAndLongitude(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

.field final synthetic val$geoAddressListEn:Ljava/util/List;

.field final synthetic val$geoAddressListZh:Ljava/util/List;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longitude:Ljava/lang/String;

.field final synthetic val$needToFetchWeatherData:Z

.field final synthetic val$weatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;


# direct methods
.method constructor <init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    iput-object p2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$latitude:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$longitude:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$geoAddressListZh:Ljava/util/List;

    iput-object p5, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$geoAddressListEn:Ljava/util/List;

    iput-boolean p6, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$needToFetchWeatherData:Z

    iput-object p7, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$weatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$000(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$latitude:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$longitude:Ljava/lang/String;

    new-instance v3, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;

    invoke-direct {v3, p0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;-><init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/zte/weather/sdk/model/api/WeatherContract;->fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zte/weather/sdk/model/api/IConfig;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$weatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$100(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$weatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v2, 0x5

    invoke-static {v1, p0, v2, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$100(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    :goto_0
    return-void
.end method
