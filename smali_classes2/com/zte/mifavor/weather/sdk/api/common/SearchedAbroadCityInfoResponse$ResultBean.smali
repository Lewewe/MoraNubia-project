.class public Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean;
.super Ljava/lang/Object;
.source "SearchedAbroadCityInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean;->data:Ljava/util/List;

    return-object p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean;->data:Ljava/util/List;

    return-void
.end method
