.class public Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;
.super Ljava/lang/Object;
.source "Index9TypeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexBean"
.end annotation


# instance fields
.field private forecasttime:Ljava/lang/String;

.field private index_content:Ljava/lang/String;

.field private index_level:Ljava/lang/String;

.field private index_type:Ljava/lang/String;

.field private index_type_ch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForecasttime()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->forecasttime:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex_content()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_content:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex_level()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_level:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex_type()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_type:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex_type_ch()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_type_ch:Ljava/lang/String;

    return-object p0
.end method

.method public setForecasttime(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->forecasttime:Ljava/lang/String;

    return-void
.end method

.method public setIndex_content(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_content:Ljava/lang/String;

    return-void
.end method

.method public setIndex_level(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_level:Ljava/lang/String;

    return-void
.end method

.method public setIndex_type(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_type:Ljava/lang/String;

    return-void
.end method

.method public setIndex_type_ch(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->index_type_ch:Ljava/lang/String;

    return-void
.end method
