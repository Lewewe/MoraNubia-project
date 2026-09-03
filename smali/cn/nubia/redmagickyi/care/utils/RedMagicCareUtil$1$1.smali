.class Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1$1;
.super Ljava/lang/Object;
.source "RedMagicCareUtil.java"

# interfaces
.implements Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1$1;->this$0:Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    if-ne v0, p1, :cond_5

    .line 386
    :cond_0
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getCurrent()Lcom/zte/weather/sdk/model/api/WeatherDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->getWeatherType()I

    move-result v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weather resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " WeatherType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RedMagicCareUtil"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-lt v0, p1, :cond_2

    const/16 p1, 0xc

    if-le v0, p1, :cond_3

    :cond_2
    const/16 p1, 0x15

    if-lt v0, p1, :cond_4

    const/16 p1, 0x19

    if-gt v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    .line 396
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 397
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1$1;->this$0:Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 398
    const-string p0, "last_get_weather_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    const-string p0, "moon_motion_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getCity()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getDistrict()Ljava/lang/String;

    move-result-object p2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "location:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
