.class public Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "XiaomiDeviceOAIDHelper.java"


# instance fields
.field private idImpl:Ljava/lang/Object;

.field private idProvider:Ljava/lang/Class;

.field private mContext:Landroid/content/Context;

.field private oaid:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->mContext:Landroid/content/Context;

    .line 22
    :try_start_0
    const-string p1, "com.android.id.impl.IdProviderImpl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->idProvider:Ljava/lang/Class;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->idImpl:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->idProvider:Ljava/lang/Class;

    const-string v0, "getOAID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->oaid:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->idImpl:Ljava/lang/Object;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 39
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getOAID()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->oaid:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/XiaomiDeviceOAIDHelper;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
