.class public Lcom/zte/aigc/utils/common/Settings$App;
.super Lcom/zte/aigc/utils/common/Settings$BaseSettings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aigc/utils/common/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/zte/aigc/utils/common/Settings$BaseSettings;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    .line 167
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->getBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2

    .line 159
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->getFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    .line 143
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6

    .line 151
    sget-object v1, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/zte/aigc/utils/common/Settings$App;->getLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/zte/aigc/utils/common/Settings$App;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    .line 163
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->putBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 2

    .line 155
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->putFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2

    .line 139
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->putInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 6

    .line 147
    sget-object v1, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/zte/aigc/utils/common/Settings$App;->putLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 131
    sget-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/aigc/utils/common/Settings$App;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
