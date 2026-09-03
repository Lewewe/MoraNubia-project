.class public Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountChangeReceiver.java"


# static fields
.field private static final ACTION_ACCOUNT_LOGOUT:Ljava/lang/String; = "org_zx_AuthComp_zte_account_logout"

.field private static final EXTRA_CHANGE:Ljava/lang/String; = "change"

.field private static final EXTRA_LOGIN:Ljava/lang/String; = "login"

.field private static final EXTRA_LOGOUT:Ljava/lang/String; = "logout"

.field private static final TAG:Ljava/lang/String; = "AccountChangeReceiver"

.field public static instance:Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;


# instance fields
.field mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;
    .locals 1

    .line 27
    sget-object v0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    invoke-direct {v0}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;-><init>()V

    sput-object v0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    .line 30
    :cond_0
    sget-object v0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    return-object v0
.end method


# virtual methods
.method public doAccountChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;->AccountChange()V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onReceive action is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChangeReceiver"

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "org_zx_AuthComp_zte_account_logout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/zteaccount/account/AigcAccountManager;->release()V

    .line 40
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.zte.aigc.account.change"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v0, "accountChange extra is logout"

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "change"

    const-string v1, "logout"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->doAccountChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public register(Landroid/content/Context;Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V
    .locals 2

    .line 49
    iput-object p2, p0, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    .line 50
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    const-string v0, "org_zx_AuthComp_zte_account_logout"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 61
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unregister failed! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountChangeReceiver"

    invoke-static {p1, p0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
