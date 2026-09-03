.class public Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PreloadCitiesDataBaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_NAME:Ljava/lang/String; = "preload_cities.db"

.field private static final PREF_PRELOAD_CITIES_DATABASE_VERSION:Ljava/lang/String; = "preload_cities_database_version"

.field private static final TAG:Ljava/lang/String; = "PreloadCitiesDataBaseHelper"


# instance fields
.field private final myContext:Landroid/content/Context;

.field private myDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 23
    move-object v1, v0

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v1, 0x1

    const-string v2, "preload_cities.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->myContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private copyDataBase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "preload_cities.db"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->getDbPath()Ljava/lang/String;

    move-result-object p0

    .line 56
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    .line 57
    new-array p0, p0, [B

    .line 60
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 61
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private getDbPath()Ljava/lang/String;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->myContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "databases"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "preload_cities.db"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private installDatabaseFromAsset()V
    .locals 1

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 49
    :catch_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Error copying database"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private installDatabaseIfNeccessary()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->isDatabaseOutdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->myContext:Landroid/content/Context;

    const-string v1, "preload_cities.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 39
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->installDatabaseFromAsset()V

    .line 40
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->saveDatabaseVersion()V

    :cond_0
    return-void
.end method

.method private isDatabaseOutdated()Z
    .locals 2

    .line 29
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "preload_cities_database_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private saveDatabaseVersion()V
    .locals 2

    .line 33
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "preload_cities_database_version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/db/PreloadCitiesDataBaseHelper;->installDatabaseIfNeccessary()V

    .line 71
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
