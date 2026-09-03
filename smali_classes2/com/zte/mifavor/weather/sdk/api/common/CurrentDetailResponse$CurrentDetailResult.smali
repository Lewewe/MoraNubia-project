.class public Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;
.super Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;
.source "CurrentDetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentDetailResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;
    }
.end annotation


# instance fields
.field private current:Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;->current:Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;

    return-object p0
.end method

.method public setCurrent(Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;->current:Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;

    return-void
.end method
