.class public Lcom/zte/weather/sdk/model/city/CityContract;
.super Ljava/lang/Object;
.source "CityContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;,
        Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.weather"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final ID_EMPTY_CITY:Ljava/lang/String;

.field public static final INVALID_GMT_OFFSET:I = 0x100

.field public static final WEATHER_DATA_VERSION_CN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract;->ID_EMPTY_CITY:Ljava/lang/String;

    .line 11
    const-string v0, "content://cn.nubia.weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
