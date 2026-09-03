.class public Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;
.super Ljava/lang/Object;
.source "AbstractCityLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationState"
.end annotation


# static fields
.field public static final INVALID:I = 0x0

.field public static final LOCATION_CHANGED:I = 0x1

.field public static final LOCATION_DISABLED:I = 0x3

.field public static final LOCATION_FAILED:I = 0x6

.field public static final LOCATION_TIMEOUT:I = 0x4

.field public static final LOCATION_TIMEOUT_NO_HIGH_ACCURACY:I = 0x5

.field public static final NO_PERMISSION:I = 0x2


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field private final mState:I


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mState:I

    .line 88
    iput-wide p1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLongitude:D

    .line 89
    iput-wide p3, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLatitude:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 114
    instance-of v0, p1, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-virtual {p1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLongitude()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLongitude:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mState:I

    return p0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLongitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbstractCityLocation.LocationState(mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
