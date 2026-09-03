.class public Lcn/nubia/redmagickyi/util/NubiaAccountManager;
.super Ljava/lang/Object;
.source "NubiaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;,
        Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->onCompleteResult(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkAccountLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 7

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "nubia"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    .line 46
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/util/NubiaAccountManager$1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    .line 57
    new-instance v1, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    new-instance v0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$3;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$3;-><init>(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/util/NubiaAccountManager;

    monitor-enter v0

    .line 105
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 1

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 32
    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->onCompleteResult(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->checkAccountLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 38
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->onCompleteResult(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V

    :goto_0
    return-void
.end method

.method private static onCompleteResult(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 149
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method public static release()V
    .locals 2

    .line 144
    sget-object v0, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private static runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 95
    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 98
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
