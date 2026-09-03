.class public Lcn/nubia/oauthsdk/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final ACCOUNT_FROM_ROM_NUBIA:I = 0x0

.field public static final ACCOUNT_FROM_ROM_ZTE:I = 0x1

.field private static final NEW_ACCOUNT_INTENT:I = 0x20e

.field public static final NUBIA_ACCOUNTS_PACKNAME:Ljava/lang/String; = "cn.nubia.accounts"

.field public static final NUBIA_ACCOUNTS_SUPPORT_OAUTH:I = 0x1c2

.field public static final NUBIA_ACCOUNTS_SUPPORT_WEB_SYN_LOGIN:I = 0x1fd

.field private static mAccountFromRom:I = -0x1

.field private static mPubKeyArray:Ljava/lang/String; = "XThYBmUJjDTVQ"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "eEWjC8pQ1MttAZgqw2fAKh"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsZteOrNubiaRom(Landroid/content/Context;)I
    .locals 2

    .line 138
    sget v0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mAccountFromRom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 142
    sput p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mAccountFromRom:I

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInZteRom(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 144
    sput p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mAccountFromRom:I

    .line 146
    :cond_2
    :goto_0
    sget p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mAccountFromRom:I

    return p0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x80

    .line 104
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcn/nubia/oauthsdk/utils/PackageUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 93
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 151
    sget-object p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 153
    :cond_0
    sget-object p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method public static isAccountLogin(Landroid/content/Context;)Z
    .locals 3

    .line 118
    const-string v0, "com.ztemt"

    .line 119
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const-string v0, "PackageUtils"

    if-eqz p0, :cond_0

    :try_start_1
    array-length v2, p0

    if-lez v2, :cond_0

    .line 123
    aget-object p0, p0, v1

    .line 124
    invoke-virtual {p0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 128
    :cond_0
    const-string p0, "com.ztemt account is null"

    invoke-static {v0, p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isCheckAccountPermisson(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isNewAccountIntent(Landroid/content/Context;)Z
    .locals 1

    .line 82
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/oauthsdk/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x20e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNubiaSupportOAuthVersion(Landroid/content/Context;)Z
    .locals 1

    .line 66
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/oauthsdk/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1c2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNubiaSupportWebSynLogin(Landroid/content/Context;)Z
    .locals 1

    .line 74
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/oauthsdk/utils/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1fd

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 158
    sput-object p0, Lcn/nubia/oauthsdk/utils/PackageUtils;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
