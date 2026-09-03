.class public Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAccountChangeReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cn.nubia.account.broadcastchange"

.field private static final CHANGE:Ljava/lang/String; = "change"

.field private static final LOGIN_OUT:Ljava/lang/String; = "logout"

.field private static final TAG:Ljava/lang/String; = "NubiaAccountChangeReceiver"

.field public static instance:Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;


# instance fields
.field private mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;
    .locals 1

    .line 28
    sget-object v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    invoke-direct {v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;-><init>()V

    sput-object v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    .line 31
    :cond_0
    sget-object v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    return-object v0
.end method


# virtual methods
.method public doAccountChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;->AccountChange()V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 39
    const-string v0, "NubiaAccountChangeReceiver"

    if-nez p2, :cond_0

    .line 40
    const-string p0, "NubiaAccountChangeReceiver null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    const-string v1, "change"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NubiaAccountChangeReceiver change:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "logout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "AccountChange:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->doAccountChange(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V
    .locals 2

    .line 54
    const-string v0, "NubiaAccountChangeReceiver"

    const-string v1, "register:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->mAccountInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    .line 56
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string v0, "cn.nubia.account.broadcastchange"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 67
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unregister failed! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NubiaAccountChangeReceiver"

    invoke-static {p1, p0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
