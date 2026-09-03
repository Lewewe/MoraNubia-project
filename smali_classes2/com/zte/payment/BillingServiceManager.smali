.class public Lcom/zte/payment/BillingServiceManager;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingServiceManager"

.field private static sInstance:Lcom/zte/payment/BillingServiceManager;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private enable:Z

.field private isBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/zte/aigc/IBillingManager;

.field private packageName:Ljava/lang/String;

.field private userLoginStatusCallback:Lcom/zte/aigc/IBillingCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    .line 42
    new-instance v0, Lcom/zte/payment/BillingServiceManager$1;

    invoke-direct {v0, p0}, Lcom/zte/payment/BillingServiceManager$1;-><init>(Lcom/zte/payment/BillingServiceManager;)V

    iput-object v0, p0, Lcom/zte/payment/BillingServiceManager;->userLoginStatusCallback:Lcom/zte/aigc/IBillingCallback;

    .line 82
    new-instance v0, Lcom/zte/payment/BillingServiceManager$2;

    invoke-direct {v0, p0}, Lcom/zte/payment/BillingServiceManager$2;-><init>(Lcom/zte/payment/BillingServiceManager;)V

    iput-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/payment/BillingServiceManager;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/zte/payment/BillingServiceManager;->refreshUserStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/payment/BillingServiceManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zte/payment/BillingServiceManager;Lcom/zte/aigc/IBillingManager;)Lcom/zte/aigc/IBillingManager;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/payment/BillingServiceManager;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    return p0
.end method

.method static synthetic access$302(Lcom/zte/payment/BillingServiceManager;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/payment/BillingServiceManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/zte/payment/BillingServiceManager;->registerLoginCallback()V

    return-void
.end method

.method public static getInstance()Lcom/zte/payment/BillingServiceManager;
    .locals 2

    .line 34
    const-class v0, Lcom/zte/payment/BillingServiceManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/zte/payment/BillingServiceManager;->sInstance:Lcom/zte/payment/BillingServiceManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/zte/payment/BillingServiceManager;

    invoke-direct {v1}, Lcom/zte/payment/BillingServiceManager;-><init>()V

    sput-object v1, Lcom/zte/payment/BillingServiceManager;->sInstance:Lcom/zte/payment/BillingServiceManager;

    .line 38
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object v0, Lcom/zte/payment/BillingServiceManager;->sInstance:Lcom/zte/payment/BillingServiceManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getJsonParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 341
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 113
    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->setAppName(Landroid/content/Context;)V

    .line 114
    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->setAppNameAlias(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/payment/BillingServiceManager;->packageName:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getAppNameAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/payment/BillingServiceManager;->packageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BillingServiceManager"

    const-string v2, "BillingServiceManager appName={}, appNameAlias={}, packageName={}"

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iput-object p1, p0, Lcom/zte/payment/BillingServiceManager;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private refreshUserStatus(Z)V
    .locals 2

    .line 168
    const-string v0, "refreshUserStatus"

    const-string v1, "BillingServiceManager"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/zte/payment/BillingServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/zte/payment/BillingServiceManager;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_0
    const-string p0, "refreshUserStatus: mService not connection!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private registerLoginCallback()V
    .locals 2

    .line 124
    const-string v0, "registerLoginCallback"

    const-string v1, "BillingServiceManager"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->userLoginStatusCallback:Lcom/zte/aigc/IBillingCallback;

    invoke-interface {v0, p0}, Lcom/zte/aigc/IBillingManager;->registerCallback(Lcom/zte/aigc/IBillingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    const-string v0, "registerLoginCallback "

    invoke-static {v1, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterLoginCallback()V
    .locals 2

    .line 138
    const-string v0, "unregisterLoginCallback"

    const-string v1, "BillingServiceManager"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->userLoginStatusCallback:Lcom/zte/aigc/IBillingCallback;

    invoke-interface {v0, p0}, Lcom/zte/aigc/IBillingManager;->unregisterCallback(Lcom/zte/aigc/IBillingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    const-string v0, "registerLoginCallback "

    invoke-static {v1, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public checkBalance(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 244
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v1, "BillingServiceManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    const-string v4, "user_id"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "aigc_model"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string p1, "ai_func_count"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string p1, "ai_func_tokens"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string p1, "no_login_guide"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string p1, "no_recharge_guide"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string p1, "billingStatus"

    invoke-interface {p0, p1, v0}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 255
    const-string p1, "checkBalance: "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    :cond_0
    const-string p1, "checkBalance mService not connection!!!"

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean p0, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    if-nez p0, :cond_1

    .line 261
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string p1, "user_logged"

    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string p1, "billing_status"

    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string p1, "points"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized connect(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "BillingServiceManager"

    const-string v1, "bindService isBound={}"

    iget-boolean v2, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/zte/payment/BillingServiceManager;->init(Landroid/content/Context;)V

    .line 151
    iget-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.aigc"

    const-string v3, "com.zte.aigc.BillingService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/zte/payment/BillingServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deductAmount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v1, "BillingServiceManager"

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v2, "pay_after"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string v2, "user_id"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "ai_func_count"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v2, "ai_func_tokens"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string p1, "app_name"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string p1, "app_name_alias"

    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getAppNameAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string p1, "app_package"

    iget-object v2, p0, Lcom/zte/payment/BillingServiceManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string p1, "no_login_guide"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string p1, "no_recharge_guide"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string p1, "aigc_model"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string p1, "app_func_name"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string p1, "app_func_name_alias"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string p1, "processPayment"

    invoke-interface {p0, p1, v0}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    const-string p1, "deductAmount: "

    invoke-static {v1, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    :cond_0
    const-string p0, "deductAmount mService  mService not connection!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    .line 159
    :try_start_0
    const-string v0, "BillingServiceManager"

    const-string v1, "unbindService  isBound={}"

    iget-boolean v2, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/zte/payment/BillingServiceManager;->isBound:Z

    .line 162
    invoke-direct {p0}, Lcom/zte/payment/BillingServiceManager;->unregisterLoginCallback()V

    .line 163
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/payment/BillingServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCloudTokenFromPayment()Lcom/zte/oss/entry/CloudToken;
    .locals 5

    const-string v0, "bundle result = "

    .line 307
    iget-object v1, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v2, "BillingServiceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    :try_start_0
    const-string v4, "getCloudTokenFromPayment"

    invoke-static {v2, v4}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v4, "getCloudToken"

    invoke-interface {p0, v4, v1}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 312
    const-string v1, "result"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 315
    :try_start_1
    new-instance v0, Lcom/zte/oss/entry/CloudToken;

    invoke-direct {v0}, Lcom/zte/oss/entry/CloudToken;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 316
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance p0, Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/oss/entry/CloudToken;->setToken(Ljava/lang/String;)V

    .line 319
    const-string v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zte/oss/entry/CloudToken;->setUserId(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v3

    .line 321
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v3, v0

    goto :goto_1

    :catch_3
    move-exception p0

    .line 325
    :goto_1
    const-string v0, "getCloudToken e"

    invoke-static {v2, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 328
    :cond_0
    const-string p0, "getCloudToken mService is null!!!"

    invoke-static {v2, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method public getUserInfo()Landroid/os/Bundle;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v1, "BillingServiceManager"

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v2, "no_login_guide"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v2, "getUserInfo"

    invoke-interface {p0, v2, v0}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    const-string v0, "getUserInfo "

    invoke-static {v1, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    const-string p0, "getUserInfo: mService not connection!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    return p0
.end method

.method synthetic lambda$refreshUserStatus$0$com-zte-payment-BillingServiceManager(Z)V
    .locals 6

    .line 171
    const-string v0, "BillingServiceManager"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 172
    const-string v2, "no_login_guide"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    :try_start_0
    iget-object p1, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v2, "getUserInfo"

    invoke-interface {p1, v2, v1}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 175
    const-string v1, "user_logged"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 176
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v3, "user_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "user_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    const-string v4, "refreshUserStatus: userLogged={}, user_id={}, user_token={}, user_name={}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 181
    invoke-static {v2}, Lcom/zte/payment/common/PaymentUtils;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    const-string p1, ""

    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->setUserId(Ljava/lang/String;)V

    .line 185
    :goto_0
    invoke-static {}, Lcom/zte/oss/UpLoadFileController;->getInstance()Lcom/zte/oss/UpLoadFileController;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/zte/oss/UpLoadFileController;->getOssConfig(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 187
    const-string p1, "refreshUserStatus "

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/zte/payment/BillingServiceManager;->enable:Z

    return-void
.end method

.method public startRechargeActivity()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v1, "BillingServiceManager"

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    const-string v2, "activity"

    const-string v3, "user_recharge"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v2, "startActivity"

    invoke-interface {p0, v2, v0}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    const-string v0, "startRechargeActivity "

    invoke-static {v1, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 301
    :cond_0
    const-string p0, "startRechargeActivity mService is null!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startUserLoginActivity()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v1, "BillingServiceManager"

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v2, "activity"

    const-string v3, "user_login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_0
    iget-object p0, p0, Lcom/zte/payment/BillingServiceManager;->mService:Lcom/zte/aigc/IBillingManager;

    const-string v2, "startActivity"

    invoke-interface {p0, v2, v0}, Lcom/zte/aigc/IBillingManager;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    const-string v0, "startUserLoginActivity "

    invoke-static {v1, v0, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    :cond_0
    const-string p0, "startUserLoginActivity mService is null !!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
