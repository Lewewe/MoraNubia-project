.class public Lcn/nubia/oauthsdk/api/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/api/NetConfig$Environment;
    }
.end annotation


# static fields
.field public static final AUTHORIZE:Ljava/lang/String; = "/oauth2/authorize"

.field public static final AUTHORIZE_ZTE:Ljava/lang/String; = "/oauth2/authorize.zte"

.field public static final OAUTH_CODE:Ljava/lang/String; = "/oauth2/code"

.field public static final OAUTH_SDK_VERSION:Ljava/lang/String; = "1.0.3"

.field public static final OPEN_INFO:Ljava/lang/String; = "/user/open_info"

.field public static final URL_DOMAIN_DEV:Ljava/lang/String; = "https://sdk-account-dev.server.nubia.cn"

.field public static final URL_DOMAIN_RELEASE:Ljava/lang/String; = "https://sdk-account.server.nubia.cn"

.field public static final URL_DOMAIN_TEST:Ljava/lang/String; = "https://sdk-account-test.server.nubia.cn"

.field public static final URL_OAUTH_BIND_SIGNIN:Ljava/lang/String; = "/oauth2/bindsignin"

.field public static final USER_INFO:Ljava/lang/String; = "/user/user_info"

.field public static final USER_PROFILE:Ljava/lang/String; = "/user/profile"

.field public static final USER_PROFILE_ZID:Ljava/lang/String; = "/oauth2/profile/zid"

.field private static environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->RELEASE:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    sput-object v0, Lcn/nubia/oauthsdk/api/NetConfig;->environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getURLDOMAIN()Ljava/lang/String;
    .locals 3

    .line 19
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->RELEASE:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    sget-object v1, Lcn/nubia/oauthsdk/api/NetConfig;->environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    const-string v2, "https://sdk-account.server.nubia.cn"

    if-ne v0, v1, :cond_0

    return-object v2

    .line 22
    :cond_0
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->TEST:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    sget-object v1, Lcn/nubia/oauthsdk/api/NetConfig;->environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    if-ne v0, v1, :cond_1

    .line 23
    const-string v0, "https://sdk-account-test.server.nubia.cn"

    return-object v0

    .line 25
    :cond_1
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->DEBUG:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    sget-object v1, Lcn/nubia/oauthsdk/api/NetConfig;->environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    if-ne v0, v1, :cond_2

    .line 26
    const-string v0, "https://sdk-account-dev.server.nubia.cn"

    return-object v0

    :cond_2
    return-object v2
.end method

.method public static setEnvironment(Lcn/nubia/oauthsdk/api/NetConfig$Environment;)V
    .locals 0

    .line 32
    sput-object p0, Lcn/nubia/oauthsdk/api/NetConfig;->environment:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    return-void
.end method
