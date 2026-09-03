.class public Lcn/nubia/redmagickyi/util/account/AigcAccountManager;
.super Ljava/lang/Object;
.source "AigcAccountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field private static mInstance:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;


# instance fields
.field private accountManager:Lcom/zte/zteaccount/account/AigcAccountManager;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->mInstance:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->mInstance:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    .line 24
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->mInstance:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private get()Lcom/zte/zteaccount/account/AigcAccountManager;
    .locals 1

    .line 29
    :try_start_0
    const-string v0, "com.zte.zteaccount.account.AigcAccountManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->accountManager:Lcom/zte/zteaccount/account/AigcAccountManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->accountManager:Lcom/zte/zteaccount/account/AigcAccountManager;

    return-object p0
.end method

.method public static switchToLoginPage(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-static {p0, p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->switchToLoginPage(Landroid/app/Activity;I)V

    return-void

    .line 66
    :cond_0
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string p1, "Empty accountManager"

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearCloudToken()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->clearCloudToken()V

    :cond_0
    return-void
.end method

.method public getAccountInfo(Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/AigcAccountManager;->getAccountInfo(Landroid/content/Context;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 103
    invoke-interface {p2, p0}, Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;->AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccountLoginBundle()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->getAccountLoginBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    new-instance v2, Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;-><init>(Lcn/nubia/redmagickyi/util/account/AigcAccountManager;Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V

    invoke-virtual {v0, v2}, Lcom/zte/zteaccount/account/AigcAccountManager;->isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;->isAccountLogin(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;->isAccountLogin(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isNubiaAccount()Z
    .locals 1

    .line 86
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZteAccount()Z
    .locals 1

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->release()V

    :cond_0
    return-void
.end method

.method public switchToLoginPage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get()Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->switchToLoginPage()V

    return-void

    .line 74
    :cond_0
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string v0, "Empty accountManager"

    invoke-direct {p0, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
