.class public Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;
.super Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
.source "MinutelyResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;
    }
.end annotation


# instance fields
.field private result:Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;->result:Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;

    return-object p0
.end method

.method public setResult(Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;->result:Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse$ResultBean;

    return-void
.end method
