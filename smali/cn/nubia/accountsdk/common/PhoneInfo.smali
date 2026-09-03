.class public Lcn/nubia/accountsdk/common/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field private static final KEY_DEVICE:Ljava/lang/String; = "nubia_device"

.field private static final KEY_NUBIA_UNIQUEID:Ljava/lang/String; = "uniqueid"

.field private static mPubKeyArray:Ljava/lang/String; = "8+M6UX1zuzRpmt"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "8+9AbJWZS4H010WkLJW"

.field private static macId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    const-string v0, "9774d56d682e549c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcn/nubia/accountsdk/common/PhoneInfo;->getUUID()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 4

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    const/16 v3, 0x17

    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;

    const-string v1, "nubia_device"

    invoke-direct {v0, p0, v1}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUniqueId(Lcn/nubia/accountsdk/common/SharedPreferencesUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 65
    sget-object p0, Lcn/nubia/accountsdk/common/PhoneInfo;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 67
    :cond_0
    sget-object p0, Lcn/nubia/accountsdk/common/PhoneInfo;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method private static putUniqueId(Lcn/nubia/accountsdk/common/SharedPreferencesUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/accountsdk/common/PhoneInfo$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/accountsdk/common/PhoneInfo$1;-><init>(Lcn/nubia/accountsdk/common/SharedPreferencesUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 72
    sput-object p0, Lcn/nubia/accountsdk/common/PhoneInfo;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
