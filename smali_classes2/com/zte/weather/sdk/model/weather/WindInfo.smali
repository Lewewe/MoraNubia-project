.class public Lcom/zte/weather/sdk/model/weather/WindInfo;
.super Ljava/lang/Object;
.source "WindInfo.java"


# static fields
.field public static final DIRECTION_EAST:I = 0x2

.field public static final DIRECTION_NORTH:I = 0x8

.field public static final DIRECTION_NORTHEAST:I = 0x1

.field public static final DIRECTION_NORTHWEST:I = 0x7

.field public static final DIRECTION_NO_WIND:I = 0x0

.field public static final DIRECTION_SOUTH:I = 0x4

.field public static final DIRECTION_SOUTHEAST:I = 0x3

.field public static final DIRECTION_SOUTHWEST:I = 0x5

.field public static final DIRECTION_WEST:I = 0x6

.field public static final DIRECTION_WHIRL_WIND:I = 0x9

.field public static final POWER_0:I = 0x0

.field public static final POWER_1:I = 0x1

.field public static final POWER_2:I = 0x2

.field public static final POWER_3:I = 0x3

.field public static final POWER_4:I = 0x4

.field public static final POWER_5:I = 0x5

.field public static final POWER_6:I = 0x6

.field public static final POWER_7:I = 0x7

.field public static final POWER_8:I = 0x8

.field public static final POWER_9:I = 0x9


# instance fields
.field private windDirectionDegree:Ljava/lang/String;

.field private windSpeed:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private windir:Ljava/lang/String;

.field private windpower:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindDirectionDegree()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windDirectionDegree:Ljava/lang/String;

    return-object p0
.end method

.method public getWindSpeed()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windSpeed:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getWindir()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windir:Ljava/lang/String;

    return-object p0
.end method

.method public getWindpower()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windpower:Ljava/lang/String;

    return-object p0
.end method

.method public setWindDirectionDegree(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windDirectionDegree:Ljava/lang/String;

    return-void
.end method

.method public setWindSpeed(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windSpeed:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setWindir(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windir:Ljava/lang/String;

    return-void
.end method

.method public setWindpower(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/WindInfo;->windpower:Ljava/lang/String;

    return-void
.end method
