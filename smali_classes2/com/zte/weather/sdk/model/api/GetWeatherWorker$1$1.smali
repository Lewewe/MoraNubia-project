.class Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;
.super Ljava/lang/Object;
.source "GetWeatherWorker.java"

# interfaces
.implements Lcom/zte/weather/sdk/model/api/IConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;


# direct methods
.method constructor <init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;->this$1:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressListEn()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;->this$1:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$geoAddressListEn:Ljava/util/List;

    return-object p0
.end method

.method public getAddressListZh()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;->this$1:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$geoAddressListZh:Ljava/util/List;

    return-object p0
.end method

.method public needToFetchWeatherData()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1$1;->this$1:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;

    iget-boolean p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;->val$needToFetchWeatherData:Z

    return p0
.end method
