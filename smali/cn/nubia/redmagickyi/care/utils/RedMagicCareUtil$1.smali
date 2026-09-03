.class Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;
.super Ljava/lang/Object;
.source "RedMagicCareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWeather(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 380
    invoke-static {}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->self()Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1$1;-><init>(Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->fetchCurrentLocatedCityWeather(JLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I

    move-result p0

    const/4 v0, 0x1

    .line 406
    const-string v1, "RedMagicCareUtil"

    if-ne p0, v0, :cond_0

    .line 407
    const-string v0, "ZTE_WEATHER_LOCATION_PERMISSION_ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weather request code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
