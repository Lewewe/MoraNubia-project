.class public Lcn/nubia/accountsdk/fullclient/ZteAccountClient;
.super Ljava/lang/Object;
.source "ZteAccountClient.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static volatile mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

.field private final mHttpHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

.field private mTokenId:Ljava/lang/String;

.field private mTokenKey:Ljava/lang/String;

.field public mZteToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mZteToken:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenKey:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    .line 40
    new-instance v0, Lcn/nubia/accountsdk/http/HttpRequestHandler;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHttpHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mTokenKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Lcn/nubia/accountsdk/http/HttpRequestHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHttpHandler:Lcn/nubia/accountsdk/http/HttpRequestHandler;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;
    .locals 2

    if-eqz p0, :cond_2

    .line 47
    sget-object v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    return-object p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Error:Context can not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static release()V
    .locals 1

    .line 58
    sget-object v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mInstance:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    :cond_0
    return-void
.end method

.method private throwException()V
    .locals 1

    .line 248
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params error,please check it!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSystemAccountInfo(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->throwException()V

    .line 83
    :cond_0
    :try_start_0
    const-string/jumbo v0, "zte GetZteAccountInfoAsyncRequest:"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    new-instance v1, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;

    new-instance v2, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;-><init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    invoke-direct {v1, v2}, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSystemAccountInfoNotBind(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->throwException()V

    .line 172
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;-><init>(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jumptoAccountDetailActivity(Landroid/content/Context;)V
    .locals 1

    .line 241
    :try_start_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/JumpZteAccountDetailAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/JumpZteAccountDetailAsyncRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public loginOrRegister(Landroid/app/Activity;)V
    .locals 1

    .line 69
    :try_start_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mHandler:Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;

    new-instance v0, Lcn/nubia/accountsdk/service/LoginOrRegisterZteAsyncRequest;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/service/LoginOrRegisterZteAsyncRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/service/ZteServiceRequestHandler;->sendRequest(Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reLoginWhenTokenInvalid(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
