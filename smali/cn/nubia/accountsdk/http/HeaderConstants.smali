.class public Lcn/nubia/accountsdk/http/HeaderConstants;
.super Ljava/lang/Object;
.source "HeaderConstants.java"


# static fields
.field public static final HEADER_APKVER:Ljava/lang/String; = "X-Nubia-ApkVer"

.field public static final HEADER_DEVICE_ID:Ljava/lang/String; = "X-Nubia-DeviceId"

.field public static final HEADER_MODEL:Ljava/lang/String; = "X-Nubia-Model"

.field public static final HEADER_OAUTH_SDKVER:Ljava/lang/String; = "X-Nubia-oAuthSdkVer"

.field public static final HEADER_ROMVER:Ljava/lang/String; = "X-Nubia-RomVer"

.field public static final HEADER_SDKVER:Ljava/lang/String; = "X-Nubia-SdkVer"

.field public static final HEADER_SYSVER:Ljava/lang/String; = "X-Nubia-SysVer"

.field public static final HEADER_UNIQUE_ID:Ljava/lang/String; = "X-Nubia-UniqueId"

.field private static romVersion:Ljava/lang/String; = null

.field private static sUniqueId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 83
    const-string p0, "0"

    return-object p0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/accountsdk/http/HeaderConstants;->romVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/accountsdk/http/HeaderConstants;->romVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/accountsdk/http/HeaderConstants;->setRomVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getUiVersion()Ljava/lang/String;
    .locals 6

    .line 60
    const-string v0, "unknown"

    .line 62
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "ro.build.rom.internal.id"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUiVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUniqueId()Ljava/lang/String;
    .locals 3

    .line 43
    sget-object v0, Lcn/nubia/accountsdk/http/HeaderConstants;->sUniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, ""

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-NUBIA-UNIQUEID:="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/accountsdk/http/HeaderConstants;->sUniqueId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "V_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcn/nubia/accountsdk/http/HeaderConstants;->sUniqueId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setRomVersion()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-static {}, Lcn/nubia/accountsdk/http/HeaderConstants;->getUiVersion()Ljava/lang/String;

    move-result-object v0

    .line 34
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_0
    invoke-static {v0}, Lcn/nubia/accountsdk/http/HeaderConstants;->setRomVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setRomVersion(Ljava/lang/String;)V
    .locals 0

    .line 28
    sput-object p0, Lcn/nubia/accountsdk/http/HeaderConstants;->romVersion:Ljava/lang/String;

    return-void
.end method

.method public static setUniqueId(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    sput-object p0, Lcn/nubia/accountsdk/http/HeaderConstants;->sUniqueId:Ljava/lang/String;

    return-void
.end method
