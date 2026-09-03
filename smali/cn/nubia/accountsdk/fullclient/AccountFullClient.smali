.class public Lcn/nubia/accountsdk/fullclient/AccountFullClient;
.super Ljava/lang/Object;
.source "AccountFullClient.java"


# static fields
.field public static final ACCOUNT_FROM_ROM_NUBIA:I = 0x0

.field public static final ACCOUNT_FROM_ROM_ZTE:I = 0x1

.field private static final NUBIA_ACCOUNT_PKGNAME:Ljava/lang/String; = "cn.nubia.accounts"

.field private static final NUBIA_ACCOUNT_SELECT_LOGIN_ACTIVITY:Ljava/lang/String; = "cn.nubia.accounts.login.SelectLoginActivity"

.field public static final REQUEST_SELECT_LOGIN:I = 0x2711

.field private static final RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

.field private static final ZTE_RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

.field private static mAccountFromRom:I

.field public static mAppid:Ljava/lang/String;

.field private static volatile mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;


# instance fields
.field private final mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

.field private final mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

.field private final mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcn/nubia/accountsdk/http/model/CommonResponse;

    const/4 v1, -0x1

    .line 59
    invoke-static {v1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/accountsdk/http/model/CommonResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    .line 60
    new-instance v0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    .line 62
    invoke-static {v1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->ZTE_RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    .line 63
    const-string v0, ""

    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAppid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcn/nubia/accountsdk/http/HttpRequestHandler;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    .line 71
    invoke-static {p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    .line 72
    invoke-static {p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 73
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->isNubiaRom()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 74
    sput p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->isZteRom()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 76
    sput p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 9

    if-eqz p0, :cond_2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_1

    .line 87
    const-class v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v1, :cond_0

    .line 89
    sput-object p1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAppid:Ljava/lang/String;

    .line 90
    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 91
    invoke-static {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->initDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move-object v8, p6

    invoke-static/range {v3 .. v8}, Lcn/nubia/accountsdk/http/util/HttpApis;->init(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/accountsdk/http/HeaderConstants;->setUniqueId(Ljava/lang/String;)V

    .line 94
    invoke-static {p5}, Lcn/nubia/accountsdk/common/SDKLogUtils;->setLogFlag(Z)V

    .line 96
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 98
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-object p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 9

    if-eqz p0, :cond_2

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_1

    .line 130
    const-class v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_0

    .line 132
    sput-object p1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAppid:Ljava/lang/String;

    .line 133
    sput-object p3, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    .line 134
    new-instance v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 135
    invoke-static {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->initDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcn/nubia/accountsdk/http/util/HttpApis;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/http/HeaderConstants;->setUniqueId(Ljava/lang/String;)V

    .line 138
    invoke-static {p6}, Lcn/nubia/accountsdk/common/SDKLogUtils;->setLogFlag(Z)V

    .line 140
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-object v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Params can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 10

    if-eqz p0, :cond_2

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_1

    .line 108
    const-class v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-nez v0, :cond_0

    .line 110
    sput-object p1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAppid:Ljava/lang/String;

    .line 111
    sput-object p3, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    .line 112
    new-instance v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 113
    invoke-static {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->initDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lcn/nubia/accountsdk/http/util/HttpApis;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/util/Map;ILjava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/http/HeaderConstants;->setUniqueId(Ljava/lang/String;)V

    .line 116
    invoke-static/range {p7 .. p7}, Lcn/nubia/accountsdk/common/SDKLogUtils;->setLogFlag(Z)V

    .line 118
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    return-object v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Params can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v1, "unique_id"

    invoke-static {p0}, Lcn/nubia/accountsdk/common/PhoneInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "apk_version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "lang"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .line 146
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 147
    sput-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mInstance:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    :cond_0
    return-void
.end method

.method private throwException()V
    .locals 1

    .line 1586
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params error,please check it!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V

    return-void
.end method

.method public appWebSynlogin(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$46;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$46;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1402
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1392
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public authPasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 2221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2226
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$68;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$68;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2235
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2223
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public bindThirdAccontWhenLoggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    move/from16 v9, p7

    move-object/from16 v10, p8

    if-eqz v10, :cond_2

    .line 1173
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1174
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz v9, :cond_2

    const/4 v0, 0x2

    if-le v9, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 1179
    iget-object v11, v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v12, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;

    move-object v0, v12

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {v10, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    move-object v1, p0

    .line 1176
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public cancleListener()V
    .locals 0

    .line 2316
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->cancleListener()V

    return-void
.end method

.method public changeAccountPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 724
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$21;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$21;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 735
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 725
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public changeAvatarByAccessToken(Ljava/lang/String;Ljava/io/File;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 1701
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1705
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1712
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1702
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public changeInfoByAccessToken(Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1725
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1729
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$53;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$53;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1738
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1726
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public changePasswordByAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1678
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$51;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$51;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1688
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1675
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public changeUserAvatar(Ljava/lang/String;Ljava/io/File;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$22;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 755
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 745
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public changeUserInfo(Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$47;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$47;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1424
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1414
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkAccountChannel(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$7;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$7;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 352
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 342
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkAuthCode(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 612
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 602
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkBindThirdAccountSmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 482
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$14;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 492
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public checkImageCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$18;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$18;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 572
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 562
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkModifyEmailIsActive(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 995
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$34;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$34;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1007
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 996
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V

    return-void
.end method

.method public checkRegisterSmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 442
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$12;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$12;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 452
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public checkRetrievePasswordSmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 462
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$13;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$13;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 472
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public checkSupplementEmailIsActive(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$41;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$41;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1293
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1283
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkUserVerifySmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$28;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$28;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 875
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 865
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public checkVerifyEmailIsActive(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 930
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$31;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$31;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 942
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 931
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public createPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 502
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$15;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 512
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchBindThirdAccountSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 422
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$11;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$11;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 432
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchImageCode(IILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ImageCodeResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;II)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 552
    new-instance p0, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;-><init>(I)V

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 542
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public fetchRegisterSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 382
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$9;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$9;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 392
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchRetrievePasswordSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 402
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$10;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$10;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 412
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchSigninSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1750
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 1753
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$54;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$54;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1760
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchSigninSmsCodeFuse(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1786
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 1789
    :cond_0
    const-string v0, "fetchSigninSmsCodeFuse checkAccountChannel"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1791
    new-instance v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->checkAccountChannel(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method public fetchSigninSmsCodeZte(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ZteLoginResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1769
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$55;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$55;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1779
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->ZTE_RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fetchSmsCode(Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2156
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$65;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$65;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2164
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2153
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public fetchSmsCodeByImg(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 2175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2179
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2187
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2176
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public fetchSupplemetnMobileSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$19;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$19;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 592
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 582
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public fetchUniqueCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$23;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$23;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 775
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 765
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1529
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    return-void
.end method

.method public getInfoByAccessToken(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1654
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$50;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$50;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1661
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1651
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getRealIdentity(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1378
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$45;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$45;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1385
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1375
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getSettingAccountInfo(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2312
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getSettingAccountInfo(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)V

    return-void
.end method

.method public getSmsImgCode(Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$67;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$67;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2210
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2199
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getSocialBindList(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ArrayResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 2047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2051
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$61;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$61;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2058
    new-instance p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;

    const/4 p1, -0x1

    .line 2059
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/http/model/ArrayResponse;-><init>(ILjava/lang/String;)V

    .line 2058
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2048
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    return-void
.end method

.method public getSystemAccountInfoFuse(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1456
    sget v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    if-nez v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1481
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSystemAccountInfoFuseNotBind(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1489
    sget v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    if-nez v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$49;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$49;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1514
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->getSystemAccountInfoNotBind(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getThirdAccountBindRelation(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1306
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$42;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$42;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1313
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1303
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1522
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V

    return-void
.end method

.method public isAccountExis(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$8;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$8;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 372
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 362
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public isNubiaRom()Z
    .locals 0

    .line 1434
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isNubiaRom()Z

    move-result p0

    return p0
.end method

.method public isSupportGetSettingAccountInfo()Z
    .locals 0

    .line 2320
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isSupportGetSettingAccountInfo()Z

    move-result p0

    return p0
.end method

.method public isSurportCertification()Z
    .locals 0

    .line 1442
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isSurportCertification()Z

    move-result p0

    return p0
.end method

.method public isSurportNewApi()Z
    .locals 0

    .line 1430
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isSurportNewApi()Z

    move-result p0

    return p0
.end method

.method public isVipDevice()Z
    .locals 0

    .line 1590
    invoke-static {}, Lcn/nubia/accountsdk/common/SDKUtils;->isVipDevice()Z

    move-result p0

    return p0
.end method

.method public isZteRom()Z
    .locals 0

    .line 1438
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->isZteRom()Z

    move-result p0

    return p0
.end method

.method public jumpToCheckPswdActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1564
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->jumpToCheckPswdActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public jumptoAccountDetailActivity(Landroid/content/Context;)V
    .locals 0

    .line 1560
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    return-void
.end method

.method public jumptoAccountDetailActivityFuse(Landroid/content/Context;)V
    .locals 2

    .line 1548
    sget v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    if-nez v0, :cond_0

    .line 1549
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1551
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public jumptoAccountDetailActivityZte(Landroid/content/Context;)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    return-void
.end method

.method public jumptoCertificationActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/accountsdk/common/CetificationLackingException;
        }
    .end annotation

    .line 1609
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->jumptoCertificationActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public loginBindSignIn(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$5;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$5;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 267
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 269
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 267
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 257
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public loginBySystemAccountOrOhterWays(Landroid/app/Activity;)V
    .locals 2

    .line 1324
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1325
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.login.SelectLoginActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    const-string v0, "cn.nubia.account.SELECT_LOGIN_WAY_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 1327
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x0

    .line 1328
    invoke-virtual {p1, p0, p0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1330
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1331
    sget-boolean p0, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 1333
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    .line 1332
    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public loginOrCheckAccount(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$1;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 177
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 167
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public loginOrCheckAccountFuse(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/SignResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    const-string v0, "loginOrCheckAccountFuse:"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->checkAccountChannel(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void

    .line 276
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public loginOrRegister(Landroid/app/Activity;)V
    .locals 0

    .line 1571
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->loginOrRegister(Landroid/app/Activity;)V

    return-void
.end method

.method public loginOrRegisterFuse(Landroid/app/Activity;)V
    .locals 2

    .line 1578
    sget v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    if-nez v0, :cond_0

    .line 1579
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->loginOrRegister(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1581
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->loginOrRegister(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loginZteByPswd(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ZteLoginResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$2;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 195
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->ZTE_RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 185
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public loginZteBySmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ZteLoginResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$3;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 213
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->ZTE_RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 203
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public loginZteBySmsCodeByBind(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/SignResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$4;

    invoke-direct {v0, p0, p3}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$4;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginZteBySmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void

    .line 220
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public modifyEmailAddressSupplement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$39;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$39;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1252
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1242
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public modifyEmailAddressSupplementAgain(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$40;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$40;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1273
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1263
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public modifyMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$30;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$30;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 920
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 909
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public modifyMobileSupplement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1219
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$38;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$38;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1230
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1220
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1849
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 1850
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 1849
    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1836
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public oauthSignup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$58;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$58;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1877
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 1878
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 1877
    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1864
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public oauthSocialSignin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1891
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1892
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1896
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1906
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 1907
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 1906
    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1893
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public reLoginWhenTokenInvalid(Landroid/app/Activity;)V
    .locals 0

    .line 1605
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->reLoginWhenTokenInvalid(Landroid/app/Activity;)V

    return-void
.end method

.method public reLoginWhenTokenInvalidFuse(Landroid/app/Activity;)V
    .locals 2

    .line 1597
    sget v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mAccountFromRom:I

    if-nez v0, :cond_0

    .line 1598
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mSimpleClient:Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->reLoginWhenTokenInvalid(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1600
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 522
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$16;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 532
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public sendEmailToModifyEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 952
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$32;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$32;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 964
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 953
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public sendEmailToModifyEmailAddressAgain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 973
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$33;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$33;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 985
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 974
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public sendSmsCodeToModifyPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 885
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$29;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$29;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 897
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 886
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public smsCodeCheck(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 2127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2128
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2132
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$64;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$64;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2141
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2129
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public socialBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p6

    if-eqz v8, :cond_2

    .line 2073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2074
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2075
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2076
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 2080
    iget-object v9, v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v10, Lcn/nubia/accountsdk/fullclient/AccountFullClient$62;

    move-object v0, v10

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$62;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2091
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {v8, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    move-object v1, p0

    .line 2077
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public socialUnbind(Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 2102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$63;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$63;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2115
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2103
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public thirdAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    move/from16 v8, p6

    move-object/from16 v9, p7

    if-eqz v9, :cond_2

    .line 1017
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1018
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz v8, :cond_2

    const/4 v0, 0x2

    if-le v8, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 1022
    iget-object v10, v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v11, Lcn/nubia/accountsdk/fullclient/AccountFullClient$35;

    move-object v0, v11

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$35;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    sget-object v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {v9, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    move-object v1, p0

    .line 1019
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public unbindThirdAccontWhenLoggedIn(Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$37;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$37;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1207
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1197
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userCertification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 1340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$43;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$43;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1351
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1341
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userCertificationWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v8, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1368
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p5, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1358
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userPasswordCheck(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2026
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2030
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$60;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$60;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2037
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 2038
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 2037
    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2027
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userPasswordEmptyCheck(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/ValueResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 2245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2249
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$69;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$69;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2256
    new-instance p0, Lcn/nubia/accountsdk/http/model/ValueResponse;

    const/4 p1, -0x1

    .line 2257
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/http/model/ValueResponse;-><init>(ILjava/lang/String;)V

    .line 2256
    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2246
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userPasswordSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 2269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2270
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2274
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v7, Lcn/nubia/accountsdk/fullclient/AccountFullClient$70;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$70;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2283
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p4, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2271
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userSignout(Ljava/lang/String;ZLcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2298
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$71;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$71;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2306
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p3, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 2295
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userVerifyByEmail(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$26;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$26;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 835
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 825
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userVerifyByEmailAgain(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$27;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$27;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 855
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 845
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userVerifyByMobile(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 784
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$24;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$24;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 795
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 785
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method

.method public userVerifyByMobileAgain(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "Lcn/nubia/accountsdk/http/model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 804
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->mHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$25;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$25;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 815
    sget-object p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->RESPONSE_NO_NET_ERROR:Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-interface {p2, p0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 805
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->throwException()V

    return-void
.end method
