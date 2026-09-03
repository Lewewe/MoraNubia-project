.class public Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;
.super Landroid/content/ContentProvider;
.source "PreloadCitiesProvider.java"


# static fields
.field private static final CITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreloadCitiesProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sCitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private databaseHelper:Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 69
    const-string v1, "cities"

    const/4 v2, 0x1

    const-string v3, "com.zte.mifavor.weather.cities"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    .line 71
    const-string v1, "_id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "stationid"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "district"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "district_pinyin"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "district_en"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "city"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "city_pinyin"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "province"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "country"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "timezone"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    .line 27
    new-instance v0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->databaseHelper:Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 32
    const-string v0, "PreloadCitiesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->databaseHelper:Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 35
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 37
    sget-object v4, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 46
    const-string p0, "PreloadCitiesProvider"

    const-string p1, "no supported"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesContract$CitiesColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->sCitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 41
    const-string v1, "PreloadCitiesProvider"

    const-string v4, "query"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 42
    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 43
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 44
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
