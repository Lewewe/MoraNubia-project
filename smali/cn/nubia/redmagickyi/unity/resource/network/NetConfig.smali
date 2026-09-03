.class public Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# static fields
.field public static final BUNDLES_CACHE_ROOT:Ljava/lang/String;

.field public static final REQUEST_PARAM_APP_VERSION:Ljava/lang/String; = "app_version_code"

.field public static final REQUEST_PARAM_FRIEND_TOKEN_ID:Ljava/lang/String; = "token_id"

.field public static final REQUEST_PARAM_PAGE_NO:Ljava/lang/String; = "page_no"

.field public static final REQUEST_PARAM_PAGE_SIZE:Ljava/lang/String; = "page_size"

.field public static final REQUEST_PARAM_SIGN:Ljava/lang/String; = "sign"

.field public static final REQUEST_PARAM_TIME:Ljava/lang/String; = "time"

.field public static final RESOURCE_LIST_ALL:Ljava/lang/String; = "/redmagicbot/list_all"

.field public static final RESPONSE_OK:I = 0x0

.field public static final SERVER_DOMAIN_RELEASE:Ljava/lang/String;

.field public static final SERVER_DOMAIN_TEST:Ljava/lang/String;

.field public static final SERVER_TOKEEN_KEY_RELEASE:Ljava/lang/String; = "KbBi1ycbN19VL97IFwSV1hL6qzeKwnye"

.field public static final SERVER_TOKEEN_KEY_TEST:Ljava/lang/String; = "SOfa2lFpowqt2j2Fwjkowgh3SkF20kqw"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bundles"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->BUNDLES_CACHE_ROOT:Ljava/lang/String;

    .line 30
    const-string v0, "68747470733a2f2f7265646d61676963626f742d6170692e6e756269612938a278"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->SERVER_DOMAIN_RELEASE:Ljava/lang/String;

    .line 35
    const-string v0, "68747470733a2f2f7265646d61676963626f742d6170692d746573742e6e756269612938a278"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->SERVER_DOMAIN_TEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerToken()Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 46
    const-string v0, "KbBi1ycbN19VL97IFwSV1hL6qzeKwnye"

    return-object v0

    .line 48
    :cond_0
    const-string v0, "SOfa2lFpowqt2j2Fwjkowgh3SkF20kqw"

    return-object v0
.end method

.method public static getUrlDomain()Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;->RELEASE:Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig;->getEnv()Lcn/nubia/redmagickyi/network/okhttp/utils/EnvironmentConfig$Environment;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    sget-object v0, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->SERVER_DOMAIN_RELEASE:Ljava/lang/String;

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/resource/network/NetConfig;->SERVER_DOMAIN_TEST:Ljava/lang/String;

    return-object v0
.end method
