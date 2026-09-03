.class public Lcom/zte/mifavor/weather/sdk/helpers/TemperatureUtils;
.super Ljava/lang/Object;
.source "TemperatureUtils.java"


# static fields
.field public static final UNIT_TEMP_CELSIUS:I = 0x11

.field public static final UNIT_TEMP_FAHRENHEIT:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCelsiusToFahrenheit(F)F
    .locals 1

    const v0, 0x3fe66666    # 1.8f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42000000    # 32.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public static convertFahrenheitToCelsius(F)F
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    sub-float/2addr p0, v0

    const v0, 0x3f0f5c29    # 0.56f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getTemperatureOfCelsius(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Measurement;)Ljava/lang/Float;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Measurement;->getValue()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Measurement;->getUnitType()I

    move-result p0

    const/16 p1, 0x11

    if-ne p1, p0, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/helpers/TemperatureUtils;->convertFahrenheitToCelsius(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method
