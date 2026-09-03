.class public Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;
.super Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
.source "SearchedHomeCityInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;
    }
.end annotation


# instance fields
.field private result:Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;->result:Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;

    return-object p0
.end method

.method public setResult(Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;->result:Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;

    return-void
.end method
