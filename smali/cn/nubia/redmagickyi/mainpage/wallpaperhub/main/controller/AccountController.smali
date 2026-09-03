.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;
.super Ljava/lang/Object;
.source "AccountController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;

.field private context:Landroid/app/Activity;

.field private isEverSendEnterTrack:Z

.field private isNeedLoadData:Z

.field private lastUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isEverSendEnterTrack:Z

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result p0

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/Account;->reStoreAccountInfo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->onAccountChanged()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;

    return-object p0
.end method

.method private onAccountChanged()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->setForceUpdateAccount(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    .line 246
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->callback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;->onAccountChanged()V

    return-void
.end method

.method private sendEnterTrack(Ljava/lang/String;)V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isEverSendEnterTrack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isEverSendEnterTrack:Z

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v2, "mora_homepage_enter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "homepage_enter"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    const-string v1, "homepage_account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V
    .locals 3

    .line 161
    const-string v0, ""

    if-eqz p1, :cond_1

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getShowName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 168
    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->sendEnterTrack(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 171
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_6

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    .line 188
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 190
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 191
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    .line 202
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 204
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 205
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$4;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void

    .line 223
    :cond_8
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 224
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private updateNubiaAcctInfo(Landroid/content/Context;)V
    .locals 7

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

    .line 100
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;

    invoke-direct {v1, p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Landroid/content/Context;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 153
    const-string v0, ""

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initAccountInfo(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->lastUserName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isNeedLoadData:Z

    .line 56
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateNubiaAcctInfo(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 59
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_5

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppKey()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const-string v8, "nubia"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static/range {v2 .. v8}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p1

    .line 63
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v2, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/account/Account;->getShowName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 68
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v2

    .line 83
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    const-string p1, "pref_acct_info"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 86
    const-string p1, "pref_nubia_acct"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 90
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 2

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->context:Landroid/app/Activity;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 259
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;->onComplete(Z)V

    :goto_0
    return-void
.end method
