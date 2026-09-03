.class public abstract Lcom/zte/zteaccount/account/BaseAccountEntry;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Lcom/zte/zteaccount/account/AccountEntry;


# static fields
.field public static final KEY_CLOUD_TOKEN:Ljava/lang/String; = "cloud_token"

.field public static final KEY_CLOUD_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KEY_U_OBJECT:Ljava/lang/String; = "u_message"

.field private static final TAG:Ljava/lang/String; = "AccountEntry"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field public final mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

.field private mainHandler:Landroid/os/Handler;

.field protected serverType:Lcom/zte/aigc/common/ServerType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lcom/zte/zteaccount/CloudConfigCtrl;->getServerType(Landroid/content/Context;)Lcom/zte/aigc/common/ServerType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zte/zteaccount/account/BaseAccountEntry;-><init>(Landroid/content/Context;Lcom/zte/aigc/common/ServerType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/aigc/common/ServerType;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    .line 37
    new-instance p2, Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v0, "aigc_account"

    invoke-direct {p2, p1, v0}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/BaseAccountEntry;->onGetCloudToken(Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V

    return-void
.end method

.method private final onGetCloudToken(Ljava/lang/Thread;Lcom/zte/aigc/vo/CloudToken;Lcom/zte/zteaccount/CloudTokenInterface;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/zte/zteaccount/account/BaseAccountEntry$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/zte/zteaccount/account/BaseAccountEntry$4;-><init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/CloudTokenInterface;Lcom/zte/aigc/vo/CloudToken;)V

    invoke-direct {p0, p1, v0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->runOnTargetThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method private runOnTargetThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 1

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 140
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    :cond_0
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected final AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/zte/zteaccount/account/BaseAccountEntry$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/zte/zteaccount/account/BaseAccountEntry$3;-><init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;Lcom/zte/zteaccount/account/AccountInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->runOnTargetThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearCloudToken()V
    .locals 2

    .line 66
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v0, "cloud_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getCloudToken(Lcom/zte/zteaccount/CloudTokenInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/zte/zteaccount/account/BaseAccountEntry$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zteaccount/account/BaseAccountEntry$1;-><init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/CloudTokenInterface;)V

    invoke-virtual {p0, v1}, Lcom/zte/zteaccount/account/BaseAccountEntry;->getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not be called from main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final isAccountLogin(Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/zte/zteaccount/account/BaseAccountEntry$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/zte/zteaccount/account/BaseAccountEntry$2;-><init>(Lcom/zte/zteaccount/account/BaseAccountEntry;Lcom/zte/zteaccount/AccountLoginInterface;Z)V

    invoke-direct {p0, p1, v0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->runOnTargetThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected loadLoalSaveCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .locals 8

    .line 48
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v0, "cloud_token"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/zte/aigc/vo/CloudToken;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/CloudToken;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/zte/aigc/vo/CloudToken;->getExpiresIn()I

    move-result v0

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public abstract onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation
.end method

.method protected saveCloudToken(Lcom/zte/aigc/vo/CloudToken;)V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/zte/zteaccount/account/BaseAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v0, "cloud_token"

    invoke-virtual {p1}, Lcom/zte/aigc/vo/CloudToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
