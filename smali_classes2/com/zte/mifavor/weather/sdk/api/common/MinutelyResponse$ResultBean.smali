.class public Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;
.super Ljava/lang/Object;
.source "MinutelyResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field private datasource:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private precipitation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private precipitation_2h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private probability:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatasource()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->datasource:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getPrecipitation()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->precipitation:Ljava/util/List;

    return-object p0
.end method

.method public getPrecipitation_2h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->precipitation_2h:Ljava/util/List;

    return-object p0
.end method

.method public getProbability()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->probability:Ljava/util/List;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->status:Ljava/lang/String;

    return-object p0
.end method

.method public setDatasource(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->datasource:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setPrecipitation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->precipitation:Ljava/util/List;

    return-void
.end method

.method public setPrecipitation_2h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->precipitation_2h:Ljava/util/List;

    return-void
.end method

.method public setProbability(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->probability:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;->status:Ljava/lang/String;

    return-void
.end method
