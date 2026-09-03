.class public Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean;
.super Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;
.source "AirQualityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirQualityBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;
    }
.end annotation


# instance fields
.field private p:Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getP()Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean;->p:Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;

    return-object p0
.end method

.method public setP(Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean;->p:Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;

    return-void
.end method
