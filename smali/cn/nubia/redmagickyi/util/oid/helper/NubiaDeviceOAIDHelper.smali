.class public Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "NubiaDeviceOAIDHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceOAIDHelper"

.field private static final URI:Ljava/lang/String; = "content://cn.nubia.identity/identity"


# instance fields
.field private mConetxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;->mConetxt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getNubiaID()Ljava/lang/String;
    .locals 4

    .line 28
    const-string v0, "content://cn.nubia.identity/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/NubiaDeviceOAIDHelper;->mConetxt:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    const-string v0, "getOAID"

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v0

    .line 38
    :cond_1
    :try_start_2
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-object p0, v1

    .line 41
    :catch_1
    :try_start_3
    const-string v0, "DeviceOAIDHelper"

    const-string v2, "getNubiaOAID failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 45
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 50
    :cond_4
    throw v0
.end method
