.class public Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;
.super Ljava/lang/Object;
.source "WeatherDataRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherItem"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public lastModified:Ljava/lang/Long;

.field locationKey:Ljava/lang/String;

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/lang/Long;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->lastModified:Ljava/lang/Long;

    return-object p0
.end method

.method public getLocationKey()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->locationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->version:Ljava/lang/Integer;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->data:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/lang/Long;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->lastModified:Ljava/lang/Long;

    return-void
.end method

.method public setLocationKey(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->locationKey:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->version:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherItem{locationKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->locationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', HasWeather=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->lastModified:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
