.class public Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "MeizuDeviceOAIDHelper.java"


# static fields
.field private static final PROVIDER:Ljava/lang/String; = "com.meizu.flyme.openidsdk"

.field private static final URI:Ljava/lang/String; = "content://com.meizu.flyme.openidsdk/"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getOaid(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_1
    const-string v0, "code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    :cond_2
    const-string v0, "expired"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 92
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    :cond_3
    return-object p0

    .line 76
    :cond_4
    :goto_0
    const-string p1, "MEIZU :"

    const-string v0, "oaid null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public getMeizuID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 8

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.meizu.flyme.openidsdk"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :goto_0
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 51
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x1

    .line 53
    :try_start_1
    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "oaid"

    aput-object v1, v6, v0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->getOaid(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->isMeizuSupport()Z

    move-result p0

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1, v1, p0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    .line 61
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public isMeizuSupport()Z
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/MeizuDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    const-string v1, "com.meizu.flyme.openidsdk"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method
