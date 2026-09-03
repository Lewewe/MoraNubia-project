.class public Lcom/zte/zteaccount/account/nubia/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static BUSINESS_NUBIA_APP_ID:Ljava/lang/String; = "1882325"

.field private static BUSINESS_NUBIA_APP_KEY:Ljava/lang/String; = "c0766d75908f4ad88507c54648b43513"

.field private static BUSINESS_NUBIA_APP_KEY_SECRET:Ljava/lang/String; = "bc75a9380f974d1bb652bd81fc039665"

.field private static BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String; = null

.field public static final NUBIA_ACCOUNT_SERVER:Ljava/lang/String; = "https://sdk-account.server.nubia.cn"

.field private static TEST_NUBIA_APP_ID:Ljava/lang/String;

.field private static TEST_NUBIA_APP_KEY:Ljava/lang/String;

.field private static TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

.field private static TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    iget-object v0, v0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfig;->BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String;

    .line 14
    const-string v0, "1882326"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_ID:Ljava/lang/String;

    .line 15
    const-string v0, "04c5fe57aeb1472a940c36bf907e6deb"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_KEY:Ljava/lang/String;

    .line 16
    const-string v0, "9dc40b9c92d7403ab369d0f7a335979c"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/zte/aigc/common/ServerType;->TEST_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    iget-object v0, v0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 29
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->BUSINESS_NUBIA_APP_KEY:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_KEY:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaAppKeySecret(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 37
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->BUSINESS_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 21
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->BUSINESS_NUBIA_APP_ID:Ljava/lang/String;

    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_APP_ID:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaRedirectUri(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 45
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfig;->TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-object p0
.end method
