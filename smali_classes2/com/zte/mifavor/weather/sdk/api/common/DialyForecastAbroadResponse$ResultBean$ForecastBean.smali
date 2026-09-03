.class public Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;
.super Ljava/lang/Object;
.source "DialyForecastAbroadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForecastBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;,
        Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;
    }
.end annotation


# instance fields
.field private day:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;

.field private maxTemp:I

.field private minTemp:I

.field private night:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;

.field private rise:Ljava/lang/String;

.field private set:Ljava/lang/String;

.field private validDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->day:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;

    return-object p0
.end method

.method public getMaxTemp()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->maxTemp:I

    return p0
.end method

.method public getMinTemp()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->minTemp:I

    return p0
.end method

.method public getNight()Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->night:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;

    return-object p0
.end method

.method public getRise()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->rise:Ljava/lang/String;

    return-object p0
.end method

.method public getSet()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->set:Ljava/lang/String;

    return-object p0
.end method

.method public getValidDate()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->validDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDay(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->day:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;

    return-void
.end method

.method public setMaxTemp(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->maxTemp:I

    return-void
.end method

.method public setMinTemp(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->minTemp:I

    return-void
.end method

.method public setNight(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->night:Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;

    return-void
.end method

.method public setRise(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->rise:Ljava/lang/String;

    return-void
.end method

.method public setSet(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->set:Ljava/lang/String;

    return-void
.end method

.method public setValidDate(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->validDate:Ljava/lang/String;

    return-void
.end method
