.class public Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;
.super Ljava/lang/Object;
.source "MainAccountChangeReceiver.java"

# interfaces
.implements Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiverInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainAccountChangeReceiver"

.field public static instance:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;


# instance fields
.field private accountChangeInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;
    .locals 1

    .line 27
    sget-object v0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    invoke-direct {v0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;-><init>()V

    sput-object v0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    .line 30
    :cond_0
    sget-object v0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->instance:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    return-object v0
.end method


# virtual methods
.method public MainAcoountChange()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->accountChangeInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;->AccountChange()V

    :cond_0
    return-void
.end method

.method public clearToken()V
    .locals 0

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-static {p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    move-result-object v0

    new-instance v1, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$1;-><init>(Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;)V

    invoke-virtual {v0, p1, v1}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->register(Landroid/content/Context;Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    move-result-object v0

    new-instance v1, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$2;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$2;-><init>(Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;)V

    invoke-virtual {v0, p1, v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->register(Landroid/content/Context;Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccountChangeInterface(Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->accountChangeInterface:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 57
    :try_start_0
    invoke-static {p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isZteAccount()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 58
    invoke-static {}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/zte/AccountChangeReceiver;->unregister(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->get(Landroid/content/Context;)Lcom/zte/zteaccount/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/AigcAccountManager;->isNubiaAccount()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 60
    invoke-static {}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->getInstance()Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountChangeReceiver;->unregister(Landroid/content/Context;)V
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

    const-string p1, "MainAccountChangeReceiver"

    invoke-static {p1, p0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
