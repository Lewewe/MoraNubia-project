.class public Lcom/zte/zteaccount/account/AigcAccountManager;
.super Ljava/lang/Object;
.source "AigcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;,
        Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field private static volatile mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

.field private deepAccountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

.field private isNubiaAccount:Z

.field private isZteAccount:Z

.field private mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

.field private final mContext:Landroid/content/Context;

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount:Z

    .line 28
    iput-boolean v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount:Z

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 34
    :goto_0
    iput-object p1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mContext:Landroid/content/Context;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "new() appContext:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManager"

    invoke-static {v0, p1}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->initAccountCtrl()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zteaccount/account/AigcAccountManager;)Lcom/zte/zteaccount/account/AccountEntry;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->deepAccountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    return-object p1
.end method

.method static synthetic access$202(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AccountInfo;)Lcom/zte/zteaccount/account/AccountInfo;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-object p1
.end method

.method public static get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;
    .locals 4

    const-string v0, "get() context:"

    .line 40
    sget-object v1, Lcom/zte/zteaccount/account/AigcAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v2, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-direct {v2, p0}, Lcom/zte/zteaccount/account/AigcAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    .line 43
    const-string v2, "AccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ",mInstance="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", mAccountCtrl="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    iget-object v0, v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initAccountCtrl()V
    .locals 4

    .line 85
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isDeviceUnlockedAfterBootup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/aigc/utils/PackageUtils;->isPkgZteAccountExist(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;

    iget-object v3, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    .line 88
    iput-boolean v1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount:Z

    .line 89
    iput-boolean v2, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount:Z

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v3, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    .line 92
    iput-boolean v2, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount:Z

    .line 93
    iput-boolean v1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount:Z

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/zte/zteaccount/account/EmptyAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zteaccount/account/EmptyAccountEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    .line 96
    iput-boolean v2, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount:Z

    .line 97
    iput-boolean v2, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static switchToLoginPage(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    invoke-interface {v0, p0, p1}, Lcom/zte/zteaccount/account/AccountEntry;->switchToLoginPage(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCloudToken()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lcom/zte/zteaccount/account/AccountEntry;->clearCloudToken()V

    :cond_0
    return-void
.end method

.method public getAccountInfo(Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->accountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 113
    invoke-interface {p2, v0}, Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;->AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V

    :cond_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/zte/zteaccount/account/AigcAccountManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/zteaccount/account/AigcAccountManager$1;-><init>(Lcom/zte/zteaccount/account/AigcAccountManager;Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAccountLoginBundle()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/zte/zteaccount/account/AccountEntry;->getAccountLoginBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0, p1}, Lcom/zte/zteaccount/account/AccountEntry;->isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V

    :cond_0
    return-void
.end method

.method public isNubiaAccount()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount:Z

    return p0
.end method

.method public isZteAccount()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount:Z

    return p0
.end method

.method public release()V
    .locals 3

    .line 50
    const-string v0, "AccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release() mInstance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/zte/zteaccount/account/AigcAccountManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz p0, :cond_0

    .line 53
    invoke-interface {p0}, Lcom/zte/zteaccount/account/AccountEntry;->destroy()V

    :cond_0
    const/4 p0, 0x0

    .line 55
    sput-object p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mInstance:Lcom/zte/zteaccount/account/AigcAccountManager;

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public switchToLoginPage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager;->mAccountCtrl:Lcom/zte/zteaccount/account/AccountEntry;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/zte/zteaccount/account/AccountEntry;->switchToLoginPage()V

    :cond_0
    return-void
.end method
