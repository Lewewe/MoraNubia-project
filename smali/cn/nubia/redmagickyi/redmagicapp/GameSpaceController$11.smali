.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->playWeatherMotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 905
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 908
    invoke-static {}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->self()Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->fetchCurrentLocatedCityWeather(JLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 956
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object p0

    const/16 v1, 0xbc0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendEmptyMessage(I)Z

    .line 958
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "weather result code: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameSpaceActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
