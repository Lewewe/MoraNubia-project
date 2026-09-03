.class public Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;
.super Ljava/lang/Object;
.source "WarningResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;
    }
.end annotation


# instance fields
.field private stationId:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStationId()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->stationId:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getW()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->w:Ljava/util/List;

    return-object p0
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->stationId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setW(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->w:Ljava/util/List;

    return-void
.end method
