.class public Lcn/nubia/accountsdk/common/SDKConfiguration;
.super Ljava/lang/Object;
.source "SDKConfiguration.java"


# static fields
.field private static final NEW_ACCOUNT_INTENT:I = 0x20e

.field private static final NUBIA_ACCOUNT_PKG_NAME:Ljava/lang/String; = "cn.nubia.accounts"

.field private static final NUBIA_ACCOUNT_PKG_SURPORT_VERSIONCODE:I = 0x24

.field private static final SURPORT_CERTIFICATION:I = 0x1fa

.field private static final SURPORT_SETTING_ACCOUNT:I = 0x25c

.field private static final SURPORT_WEBSYN_LOGIN:I = 0x1fd

.field private static final ZTE_ACCOUNT_PKG_NAME:Ljava/lang/String; = "org.zx.AuthComp"

.field private static mPubKeyArray:Ljava/lang/String; = "ZxhalcQ454YCbKHcvHDpAVjd49xw"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "nSAkvIahMHjBv1GrjGDdis6E"

.field private static mVersionCode:I = 0x0

.field public static mZteAppid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 60
    sget-object p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 62
    :cond_0
    sget-object p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method public static isInNubiaRom(Landroid/content/Context;)Z
    .locals 1

    .line 20
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInZteRom(Landroid/content/Context;)Z
    .locals 1

    .line 24
    const-string v0, "org.zx.AuthComp"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNewAccountIntent(Landroid/content/Context;)Z
    .locals 1

    .line 47
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    .line 48
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 50
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x20e

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNubiaAccountAppSurport(Landroid/content/Context;)Z
    .locals 1

    .line 28
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x24

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurportCertification(Landroid/content/Context;)Z
    .locals 1

    .line 40
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    .line 41
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 43
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x1fa

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurportSettingAccount(Landroid/content/Context;)Z
    .locals 1

    .line 54
    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn.nubia.accounts"

    .line 55
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x25c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurportWebSynLogin(Landroid/content/Context;)Z
    .locals 1

    .line 33
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    .line 34
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 36
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x1fd

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 67
    sput-object p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
