.class public Lcom/zte/weather/sdk/model/weather/AirCondition;
.super Ljava/lang/Object;
.source "AirCondition.java"


# instance fields
.field private aqi:Ljava/lang/String;

.field private aqiLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/AirCondition;->aqi:Ljava/lang/String;

    return-object p0
.end method

.method public getAqiLevel()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/AirCondition;->aqiLevel:Ljava/lang/String;

    return-object p0
.end method

.method public setAqi(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/AirCondition;->aqi:Ljava/lang/String;

    return-void
.end method

.method public setAqiLevel(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/AirCondition;->aqiLevel:Ljava/lang/String;

    return-void
.end method
