.class public Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;
.super Ljava/lang/Object;
.source "AccountSimpleClient.java"


# static fields
.field private static final CERTIFICATION_ACTION:Ljava/lang/String; = "cn.nubia.account.CERTIFICATION_ACTION"

.field public static final CHECK_PSWD:I = 0x2712

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOGIN_ACTION:Ljava/lang/String; = "cn.nubia.account.LOGIN_ENTER"

.field private static final NUBIA_ACCOUNT_CERTIFICATION_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.details.certification.CertificationActivity"

.field private static final NUBIA_ACCOUNT_CHECK_PSWD_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.details.account.AccountCheckPswdActivity"

.field private static final NUBIA_ACCOUNT_DETAILS_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.details.AccountDetailActivity"

.field private static final NUBIA_ACCOUNT_LOGIN_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.AccountIntroActivity"

.field private static final NUBIA_ACCOUNT_PKGNAME:Ljava/lang/String; = "cn.nubia.accounts"

.field public static final REQUEST_TOKEN:I = 0x2710

.field public static final REQUEST_TOKEN_CERTIFICATION:I = 0x2711

.field public static final SETTINGS_ENTER_TO_LOGIN_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTINGS_LOGIN_ENTER"

.field private static final SETTING_ENTER_CHECK_PSWD_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTING_ENTER_ACCOUNT_CHECK_PSWD"

.field private static final SETTING_ENTER_DETAILS_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

.field private static final SETTING_ENTER_VIP_SERVICE_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTING_ENTER_VIP_SERVICE_ACTION"

.field private static final USERCENTER_ACTION:Ljava/lang/String; = "nubia.usercenter.action.main"

.field private static final USERCENTER_PACKAGE:Ljava/lang/String; = "cn.nubia.usercenter"

.field private static volatile mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

.field private final mIsSurport:Z

.field private final mIsSurportCertification:Z

.field private final mIsSurportWebSynLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    .line 64
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isNubiaAccountAppSurport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    .line 65
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isSurportWebSynLogin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportWebSynLogin:Z

    .line 66
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isSurportCertification(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportCertification:Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;
    .locals 2

    if-eqz p0, :cond_2

    .line 73
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 80
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    return-object p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Error:Context can not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static release()V
    .locals 1

    .line 84
    sget-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mInstance:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    :cond_0
    return-void
.end method

.method private throwException()V
    .locals 1

    .line 239
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params error,please check it!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 281
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportWebSynLogin:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;

    invoke-direct {v0, p1, p2}, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;-><init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 286
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 290
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public cancleListener()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->disconnect()V

    :cond_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 166
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;

    invoke-direct {v0, p1, p2}, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;-><init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 171
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 175
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;->onException(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/GetCloudSpaceAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/GetCloudSpaceAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 151
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 155
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSettingAccountInfo(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 299
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isSupportGetSettingAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/GetSettingAccountInfoAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/GetSettingAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 304
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 308
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/GetSysAccountInfoAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/GetSysAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 115
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 119
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->throwException()V

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mHandler:Lcn/nubia/accountsdk/service/ServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x8

    .line 133
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x9

    .line 137
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p1, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;->onException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isNubiaRom()Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSupportGetSettingAccountInfo()Z
    .locals 0

    .line 322
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isSurportSettingAccount(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSurportCertification()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurportCertification:Z

    return p0
.end method

.method public isSurportNewApi()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mIsSurport:Z

    return p0
.end method

.method public isVipDevice()Z
    .locals 0

    .line 243
    invoke-static {}, Lcn/nubia/accountsdk/common/SDKUtils;->isVipDevice()Z

    move-result p0

    return p0
.end method

.method public isZteRom()Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInZteRom(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public jumpToCheckPswdActivity(Landroid/app/Activity;)V
    .locals 2

    .line 199
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 200
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.details.account.AccountCheckPswdActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "cn.nubia.account.SETTING_ENTER_ACCOUNT_CHECK_PSWD"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2712

    .line 202
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 205
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 207
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public jumptoAccountDetailActivity(Landroid/content/Context;)V
    .locals 2

    .line 217
    const-string p0, "cn.nubia.cloud"

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    const-string v1, "cn.nubia.usercenter"

    invoke-static {p1, v1}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string p0, "nubia.usercenter.action.main"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string p0, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p1, p0}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string p0, "nubia.cloud.action.UserCenter"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 225
    :cond_1
    const-string p0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.details.AccountDetailActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string p0, "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 231
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    const/4 p0, -0x7

    .line 233
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public jumptoCertificationActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/accountsdk/common/CetificationLackingException;
        }
    .end annotation

    .line 268
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 269
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.details.certification.CertificationActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v0, "cn.nubia.account.CERTIFICATION_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 272
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 274
    :catch_0
    new-instance p0, Lcn/nubia/accountsdk/common/CetificationLackingException;

    invoke-direct {p0}, Lcn/nubia/accountsdk/common/CetificationLackingException;-><init>()V

    throw p0
.end method

.method public loginOrRegister(Landroid/app/Activity;)V
    .locals 2

    .line 185
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2710

    .line 187
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 190
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 192
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reLoginWhenTokenInvalid(Landroid/app/Activity;)V
    .locals 2

    .line 251
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v0, "cn.nubia.account.LOGIN_ENTER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2710

    .line 255
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 259
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
