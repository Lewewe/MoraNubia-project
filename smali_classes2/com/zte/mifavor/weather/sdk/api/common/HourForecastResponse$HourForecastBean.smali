.class public Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean;
.super Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;
.source "HourForecastResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourForecastBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;
    }
.end annotation


# instance fields
.field private jh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getJh()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean;->jh:Ljava/util/List;

    return-object p0
.end method

.method public setJh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean;->jh:Ljava/util/List;

    return-void
.end method
