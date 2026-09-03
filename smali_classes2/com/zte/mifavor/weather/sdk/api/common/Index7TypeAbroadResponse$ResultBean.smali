.class public Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;
.super Ljava/lang/Object;
.source "Index7TypeAbroadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;
    }
.end annotation


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;",
            ">;"
        }
    .end annotation
.end field

.field private stationid:Ljava/lang/String;

.field private updatetime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getI()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->i:Ljava/util/List;

    return-object p0
.end method

.method public getStationid()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->stationid:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdatetime()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->updatetime:Ljava/lang/String;

    return-object p0
.end method

.method public setI(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->i:Ljava/util/List;

    return-void
.end method

.method public setStationid(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->stationid:Ljava/lang/String;

    return-void
.end method

.method public setUpdatetime(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->updatetime:Ljava/lang/String;

    return-void
.end method
