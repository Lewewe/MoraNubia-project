.class public Lcom/zte/mifavor/weather/sdk/helpers/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomLocation()Landroid/location/Location;
    .locals 8

    const-wide v4, -0x3fba5555ea17606fL    # -43.3333156

    const-wide v6, 0x4051c248f38ed875L    # 71.0357026

    const-wide v0, -0x3f9b4e18baac38d9L    # -165.5594813

    const-wide v2, 0x406322da708ede55L    # 153.089165

    .line 22
    invoke-static/range {v0 .. v7}, Lcom/zte/mifavor/weather/sdk/helpers/LocationUtils;->randomLonLat(DDDD)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static randomLonLat(DDDD)Landroid/location/Location;
    .locals 3

    .line 11
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-double/2addr p2, p0

    mul-double/2addr v1, p2

    add-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x7

    const/4 p1, 0x4

    .line 12
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    .line 13
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-double/2addr p6, p4

    mul-double/2addr v1, p6

    add-double/2addr v1, p4

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 14
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    .line 15
    new-instance p4, Landroid/location/Location;

    const-string p5, "null"

    invoke-direct {p4, p5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p4, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    .line 17
    invoke-virtual {p4, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    return-object p4
.end method
