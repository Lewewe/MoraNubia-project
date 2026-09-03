.class public Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract$CitiesColumns;
.super Ljava/lang/Object;
.source "PreloadCitiesContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CitiesColumns"
.end annotation


# static fields
.field public static final COLUMN_CITY:Ljava/lang/String; = "city"

.field public static final COLUMN_CITY_PINYIN:Ljava/lang/String; = "city_pinyin"

.field public static final COLUMN_COUNTRY:Ljava/lang/String; = "country"

.field public static final COLUMN_DISTRICT:Ljava/lang/String; = "district"

.field public static final COLUMN_DISTRICT_EN:Ljava/lang/String; = "district_en"

.field public static final COLUMN_DISTRICT_PINYIN:Ljava/lang/String; = "district_pinyin"

.field public static final COLUMN_LOCATION_KEY:Ljava/lang/String; = "stationid"

.field public static final COLUMN_PROVINCE:Ljava/lang/String; = "province"

.field public static final COLUMN_TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "cities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract$CitiesColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    sput-object v1, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract$CitiesColumns;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
