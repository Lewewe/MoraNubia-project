.class public Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;
.super Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
.source "GeoAbroadCityInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;
    }
.end annotation


# instance fields
.field private result:Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;->result:Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;

    return-object p0
.end method
