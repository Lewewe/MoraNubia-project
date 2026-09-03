.class public Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;
.super Ljava/lang/Object;
.source "WeatherSettingsContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.weather.settings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_KEY:Ljava/lang/String; = "key"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_KEY_ACCEPT:Ljava/lang/String; = "hasAccept"

.field public static final WHERE_CLAUSE:Ljava/lang/String; = "key=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "content://cn.nubia.weather.settings/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertParameter(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static readParameter(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 53
    :try_start_0
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 54
    sget-object v3, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object p1, v4

    check-cast p1, [Ljava/lang/String;

    const-string v5, "key=?"

    const/4 v7, 0x0

    move-object p1, v7

    check-cast p1, Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 60
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    .line 65
    :cond_4
    :try_start_2
    const-string p1, "value"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_6
    throw p1
.end method

.method public static setWeatherNoticeAccepted(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "hasAccept"

    invoke-static {p0, v0, p1}, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->writeParameter(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeParameter(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 22
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 23
    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    .line 24
    sget-object v0, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "key=?"

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->insertParameter(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2

    :cond_1
    return v0
.end method
