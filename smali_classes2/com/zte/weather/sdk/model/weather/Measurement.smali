.class public Lcom/zte/weather/sdk/model/weather/Measurement;
.super Ljava/lang/Object;
.source "Measurement.java"


# instance fields
.field private unit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Unit"
    .end annotation
.end field

.field private unitType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnitType"
    .end annotation
.end field

.field private value:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    .line 22
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    .line 23
    iget p1, p1, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    iput p1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    .line 16
    iput-object p2, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    return-void
.end method

.method public static newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 1

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Measurement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v0, p0}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    return-object p0
.end method

.method public getUnitType()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    return p0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUnitType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Measurement{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Measurement;->unitType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
