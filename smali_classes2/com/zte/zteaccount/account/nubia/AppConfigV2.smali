.class public Lcom/zte/zteaccount/account/nubia/AppConfigV2;
.super Ljava/lang/Object;
.source "AppConfigV2.java"


# static fields
.field private static BUSINESS_NUBIA_APP_ID:Ljava/lang/String; = "1675492915"

.field private static BUSINESS_NUBIA_APP_KEY:Ljava/lang/String; = "b6e5d17d5773b5f93320d005d2f64799"

.field private static BUSINESS_NUBIA_APP_KEY_SECRET:Ljava/lang/String; = "fe07e33d181c1c3712cfe3899584114a"

.field private static BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String;

.field private static TEST_NUBIA_APP_ID:Ljava/lang/String;

.field private static TEST_NUBIA_APP_KEY:Ljava/lang/String;

.field private static TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

.field private static TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    iget-object v0, v0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String;

    .line 13
    const-string v0, "845332076"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_ID:Ljava/lang/String;

    .line 14
    const-string v0, "171f7dde5e303e364604605d75742778"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_KEY:Ljava/lang/String;

    .line 15
    const-string v0, "12924ab9d5d4774a96d36d256cbe72b4"

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/zte/aigc/common/ServerType;->TEST_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    iget-object v0, v0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    sput-object v0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 28
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->BUSINESS_NUBIA_APP_KEY:Ljava/lang/String;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_KEY:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaAppKeySecret(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 36
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->BUSINESS_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_KEY_SECRET:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 20
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->BUSINESS_NUBIA_APP_ID:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_APP_ID:Ljava/lang/String;

    return-object p0
.end method

.method public static getNubiaRedirectUri(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/zte/aigc/common/ServerType;->BUSINESS_SERVER_ADDRESS:Lcom/zte/aigc/common/ServerType;

    if-ne p0, v0, :cond_0

    .line 44
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->BUSINESS_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-object p0

    .line 46
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->TEST_NUBIA_REDIRECT_URI:Ljava/lang/String;

    return-object p0
.end method
