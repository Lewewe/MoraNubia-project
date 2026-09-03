.class public Lcn/nubia/redmagickyi/util/RingtoneGetter;
.super Ljava/lang/Object;
.source "RingtoneGetter.java"


# static fields
.field private static final PROP_THEME_DEVICES_TENCENT:I = 0x1a24

.field private static final TAG:Ljava/lang/String; = "TAG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRingtoneName()Ljava/lang/String;
    .locals 3

    .line 51
    const-string v0, "persist.sys.nubia.theme_devices"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1a24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 52
    const-string v0, "ro.config.ringtone.tencent"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 54
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v0, "ro.config.ringtone"

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRingtoneName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 13

    const-string v0, "getRingtone by ContentProvider: "

    const/4 v1, 0x1

    .line 16
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRingtone by RingtoneManager: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/util/RingtoneGetter;->getRingtoneName()Ljava/lang/String;

    move-result-object v3

    .line 20
    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/String;

    const-string v6, "_id"

    const/4 v12, 0x0

    aput-object v6, v7, v12

    new-array v9, v1, [Ljava/lang/String;

    aput-object v3, v9, v12

    const/4 v10, 0x0

    const-string v8, "_display_name=?"

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 35
    :goto_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 41
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 38
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_2

    :goto_4
    if-eqz v1, :cond_3

    .line 41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_3
    throw p0

    :cond_4
    :goto_5
    return-object v2
.end method
