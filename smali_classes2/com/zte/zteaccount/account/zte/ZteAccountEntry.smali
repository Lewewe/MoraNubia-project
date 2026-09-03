.class public Lcom/zte/zteaccount/account/zte/ZteAccountEntry;
.super Lcom/zte/zteaccount/account/BaseAccountEntry;
.source "ZteAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;
    }
.end annotation


# static fields
.field public static final KEY_CLOUD_TOKEN:Ljava/lang/String; = "cloud_token"

.field public static final KEY_CLOUD_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KEY_ENCRYPT:Ljava/lang/String; = "encrypt"

.field private static final KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field private static final TAG:Ljava/lang/String; = "ZteAccountEntry"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field protected accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

.field private mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

.field protected final mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

.field private myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/account/BaseAccountEntry;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mContext:Landroid/content/Context;

    const-string v1, "aigc_account"

    invoke-direct {p1, v0, v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    .line 49
    invoke-direct {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zteaccount/account/zte/ZteAccountEntry;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->requestAcccountInfo(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 59
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$1;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$1;-><init>(Lcom/zte/zteaccount/account/zte/ZteAccountEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyAccountChanged()V
    .locals 0

    return-void
.end method

.method private requestAcccountInfo(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 78
    :cond_0
    sget-object p1, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->onGetAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    goto :goto_0

    .line 83
    :cond_1
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, v0}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0

    .line 89
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->destroy()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 250
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->destroyAccountPresenter()V

    return-void
.end method

.method public destroyAccountPresenter()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->unBindShareService()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    :cond_0
    return-void
.end method

.method public getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->requestAcccountInfo(Z)V

    .line 129
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void

    .line 130
    :cond_0
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object p1, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, p1}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not be called from main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountLoginBundle()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->initAccountPresenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getLoginBundle()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 174
    :catch_0
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_APP_ERROR:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, v0}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0

    .line 168
    :cond_0
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_APP_ERROR:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, v0}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .line 189
    sget-object v0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-nez v2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->onGetNBAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz v2, :cond_1

    .line 196
    new-instance v2, Landroid/accounts/Account;

    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "zte"

    invoke-direct {v2, p0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 200
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    monitor-exit v0

    return-object v1

    .line 201
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public initAccountPresenter()Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/zte/zteaccount/account/zte/AccountPresenter;

    iget-object v3, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->setIsFinish(Z)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    invoke-virtual {v0, v2}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->setIsFinish(Z)V

    .line 115
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->onAccountObtain(Lcom/zte/zteaccount/account/AccountInfo;)V

    return v2

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->setAccountCB(Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;)V

    .line 120
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->bindService()Z

    move-result p0

    return p0
.end method

.method public isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->getUserToken()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v2, "user_token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v2, "user_token"

    invoke-virtual {v1, v2, v0}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    monitor-enter p0

    const/4 v1, 0x0

    .line 153
    :try_start_0
    iput-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    invoke-virtual {v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->clear()V

    .line 156
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v2, "user_token"

    invoke-virtual {v1, v2, v0}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->notifyAccountChanged()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->isAccountLogin(Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V

    :cond_2
    return-void
.end method

.method protected onGetAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->initAccountPresenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->get()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-object v0

    .line 96
    :cond_0
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, v0}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0
.end method

.method public onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->onGetNBAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    iget-object v1, v1, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aigcapi/user/check_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/AccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/aigc/vo/common/DeviceInfo;->build(Landroid/content/Context;)Lcom/zte/aigc/vo/common/DeviceInfo;

    move-result-object v2

    .line 213
    const-string v3, "ZTE"

    invoke-virtual {v2, v3}, Lcom/zte/aigc/vo/common/DeviceInfo;->setBrand(Ljava/lang/String;)V

    .line 214
    const-string v3, "device"

    invoke-virtual {v2}, Lcom/zte/aigc/vo/common/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 215
    invoke-static {v0, v2, v1}, Lcom/zte/zteaccount/HttpHelper;->doRequest(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 219
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$2;

    invoke-direct {v3, p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$2;-><init>(Lcom/zte/zteaccount/account/zte/ZteAccountEntry;)V

    invoke-virtual {v3}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aigc/vo/Result;

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zte/aigc/vo/CloudToken;

    .line 222
    invoke-virtual {p0, v2}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->saveCloudToken(Lcom/zte/aigc/vo/CloudToken;)V

    :cond_2
    return-object v2
.end method

.method protected onGetNBAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->initAccountPresenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->myAccountCallback:Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$MyAccountCallback;->get()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-object v0

    .line 138
    :cond_0
    new-instance p0, Lcom/zte/aigc/common/RequestException;

    sget-object v0, Lcom/zte/aigc/common/ErrorCode;->ACCOUNT_NOT_LOGIN:Lcom/zte/aigc/common/ErrorCode;

    invoke-direct {p0, v0}, Lcom/zte/aigc/common/RequestException;-><init>(Lcom/zte/aigc/common/ErrorCode;)V

    throw p0
.end method

.method public refresh()V
    .locals 4

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 54
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v2, "expires_in"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;I)V

    .line 55
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v1, "cloud_token"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchToLoginPage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->startLoginActivity(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 242
    const-string v0, "ZteAccountEntry"

    const-string v1, "switchToLoginPage failed"

    invoke-static {v0, v1, p0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string v0, "startLoginActivity failed"

    invoke-direct {p0, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchToLoginPage(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->accountPresenter:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->startLoginActivity(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 232
    const-string p1, "ZteAccountEntry"

    const-string p2, "switchToLoginPage failed"

    invoke-static {p1, p2, p0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string p1, "startLoginActivity failed"

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
