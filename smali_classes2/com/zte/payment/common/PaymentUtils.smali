.class public Lcom/zte/payment/common/PaymentUtils;
.super Ljava/lang/Object;
.source "PaymentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/payment/common/PaymentUtils$TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentUtils"

.field public static final TYPE_CHAT_BASE:I = 0x0

.field public static final TYPE_CHAT_PRO:I = 0x1

.field private static appName:Ljava/lang/String;

.field private static appNameAlias:Ljava/lang/String;

.field private static userId:Ljava/lang/String;

.field private static final userIdLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/payment/common/PaymentUtils;->userIdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/zte/payment/common/PaymentUtils;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppNameAlias()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/zte/payment/common/PaymentUtils;->appNameAlias:Ljava/lang/String;

    return-object v0
.end method

.method public static getType(Z)I
    .locals 0

    return p0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .line 83
    sget-object v0, Lcom/zte/payment/common/PaymentUtils;->userIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/zte/payment/common/PaymentUtils;->userId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAppName(Landroid/content/Context;)V
    .locals 5

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 58
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    const-string v1, "getAppName appName={}, error={}"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "PaymentUtils"

    invoke-static {v2, v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    sput-object v0, Lcom/zte/payment/common/PaymentUtils;->appName:Ljava/lang/String;

    return-void
.end method

.method public static setAppNameAlias(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "Unknown"

    :goto_1
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/zte/payment/common/PaymentUtils;->appNameAlias:Ljava/lang/String;

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/zte/payment/common/PaymentUtils;->userIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sput-object p0, Lcom/zte/payment/common/PaymentUtils;->userId:Ljava/lang/String;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
