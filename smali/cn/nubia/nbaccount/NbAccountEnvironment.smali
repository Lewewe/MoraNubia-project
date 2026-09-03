.class public Lcn/nubia/nbaccount/NbAccountEnvironment;
.super Ljava/lang/Object;
.source "NbAccountEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;
    }
.end annotation


# static fields
.field private static mPubKeyArray:Ljava/lang/String; = "6ylItlOKmBO/+ZXl/eEr9VRgPqtsW9"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "5frtfsYf2XUB0X/9QX"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 12
    sget-object p0, Lcn/nubia/nbaccount/NbAccountEnvironment;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcn/nubia/nbaccount/NbAccountEnvironment;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method private static setDevEnvironment()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->setServerEnv(I)V

    .line 54
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->DEBUG:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    invoke-static {v0}, Lcn/nubia/oauthsdk/api/NetConfig;->setEnvironment(Lcn/nubia/oauthsdk/api/NetConfig$Environment;)V

    return-void
.end method

.method public static setEnv(Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;)V
    .locals 1

    .line 29
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$1;->$SwitchMap$cn$nubia$nbaccount$NbAccountEnvironment$Environment:[I

    invoke-virtual {p0}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 40
    invoke-static {}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setReleaseEnvironment()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setDevEnvironment()V

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setTestEnvironment()V

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {}, Lcn/nubia/nbaccount/NbAccountEnvironment;->setReleaseEnvironment()V

    :goto_0
    return-void
.end method

.method private static setReleaseEnvironment()V
    .locals 1

    const/4 v0, 0x2

    .line 45
    invoke-static {v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->setServerEnv(I)V

    .line 46
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->RELEASE:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    invoke-static {v0}, Lcn/nubia/oauthsdk/api/NetConfig;->setEnvironment(Lcn/nubia/oauthsdk/api/NetConfig$Environment;)V

    return-void
.end method

.method private static setTestEnvironment()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lcn/nubia/accountsdk/http/util/HttpApis;->setServerEnv(I)V

    .line 50
    sget-object v0, Lcn/nubia/oauthsdk/api/NetConfig$Environment;->TEST:Lcn/nubia/oauthsdk/api/NetConfig$Environment;

    invoke-static {v0}, Lcn/nubia/oauthsdk/api/NetConfig;->setEnvironment(Lcn/nubia/oauthsdk/api/NetConfig$Environment;)V

    return-void
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 19
    sput-object p0, Lcn/nubia/nbaccount/NbAccountEnvironment;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
