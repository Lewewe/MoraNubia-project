.class public Lcom/zte/oss/UpLoadFileController;
.super Ljava/lang/Object;
.source "UpLoadFileController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;,
        Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://aigc.ztems.com/aigcapi"

.field private static final GET_OSS_CONFIG:Ljava/lang/String; = "/oss/config"

.field private static final OSS_FILE_EXPIRED_TIME_IN_SECONDS:J = 0xe10L

.field private static final TAG:Ljava/lang/String; = "UpLoadFileController"

.field private static sInstance:Lcom/zte/oss/UpLoadFileController;


# instance fields
.field private isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sOssConfig:Lcom/zte/oss/entry/OssConfig;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/oss/UpLoadFileController;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/zte/oss/UpLoadFileController;->doRequestSync(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/oss/UpLoadFileController;)Lcom/zte/oss/entry/OssConfig;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/OssConfig;)Lcom/zte/oss/entry/OssConfig;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/oss/UpLoadFileController;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/zte/oss/UpLoadFileController;->trimImage(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/oss/UpLoadFileController;Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/oss/UpLoadFileController;->getOssConfigSync(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/CloudToken;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/zte/oss/UpLoadFileController;->getOssConfigSyncIndeed(Lcom/zte/oss/entry/CloudToken;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/oss/UpLoadFileController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 75
    new-instance v8, Lcom/zte/oss/UpLoadFileController$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/zte/oss/UpLoadFileController$1;-><init>(Lcom/zte/oss/UpLoadFileController;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 86
    invoke-virtual {v8, p0, p1}, Lcom/zte/oss/UpLoadFileController$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p0, 0x0

    return-object p0
.end method

.method private doRequestSync(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 91
    const-string p0, "UpLoadFileController"

    .line 0
    const-string v0, "code:"

    .line 91
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 92
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 94
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    if-nez p4, :cond_0

    .line 99
    const-string p4, "application/x-www-form-urlencoded"

    :cond_0
    if-eqz p5, :cond_1

    .line 102
    const-string p2, "application/octet-stream"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 103
    const-string p4, "file"

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    .line 104
    const-string p4, "multipart/form-data"

    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    .line 105
    new-instance p5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 106
    invoke-virtual {p5, p4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p4

    const-string p5, "cloud_token"

    .line 107
    invoke-virtual {p4, p5, p6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p4

    .line 108
    invoke-virtual {p4, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p2

    .line 110
    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 112
    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    invoke-static {p4, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 113
    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_2
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_3

    .line 119
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 121
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 124
    :try_start_0
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 128
    const-string p2, " failed:"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private doUploadFileRequestIndeed(Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;Lcom/zte/oss/entry/CloudToken;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V
    .locals 2

    .line 160
    const-string v0, "UpLoadFileController"

    const-string v1, "upload file begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/zte/oss/UpLoadFileController$2;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/zte/oss/UpLoadFileController$2;-><init>(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/UploadFile;Landroid/content/Context;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/zte/oss/UpLoadFileController;->getOssConfigSync(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCloudTokenSync(Landroid/content/Context;Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 345
    :try_start_0
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->getCloudTokenFromPayment()Lcom/zte/oss/entry/CloudToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 350
    :goto_0
    invoke-interface {p2, p0}, Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;->onGetCloudToken(Lcom/zte/oss/entry/CloudToken;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 347
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p2, :cond_1

    .line 350
    invoke-interface {p2, p0}, Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;->onGetCloudToken(Lcom/zte/oss/entry/CloudToken;)V

    .line 352
    :cond_1
    throw p1
.end method

.method public static getInstance()Lcom/zte/oss/UpLoadFileController;
    .locals 2

    .line 66
    const-class v0, Lcom/zte/oss/UpLoadFileController;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/zte/oss/UpLoadFileController;->sInstance:Lcom/zte/oss/UpLoadFileController;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/zte/oss/UpLoadFileController;

    invoke-direct {v1}, Lcom/zte/oss/UpLoadFileController;-><init>()V

    sput-object v1, Lcom/zte/oss/UpLoadFileController;->sInstance:Lcom/zte/oss/UpLoadFileController;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Lcom/zte/oss/UpLoadFileController;->sInstance:Lcom/zte/oss/UpLoadFileController;

    return-object v0

    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized getOssConfigSync(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/oss/UpLoadFileController;->isNeedGetNewOssConfig(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "UpLoadFileController"

    const-string v2, "get oss begin"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 276
    new-instance p2, Lcom/zte/oss/UpLoadFileController$4;

    invoke-direct {p2, p0, p3}, Lcom/zte/oss/UpLoadFileController$4;-><init>(Lcom/zte/oss/UpLoadFileController;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, p2}, Lcom/zte/oss/UpLoadFileController;->getCloudTokenSync(Landroid/content/Context;Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p2}, Lcom/zte/oss/UpLoadFileController;->getOssConfigSyncIndeed(Lcom/zte/oss/entry/CloudToken;)V

    if-eqz p3, :cond_1

    .line 289
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 295
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 297
    :cond_3
    iget-object p1, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getOssConfigSyncIndeed(Lcom/zte/oss/entry/CloudToken;)V
    .locals 11

    .line 303
    const-string v0, "UpLoadFileController"

    if-eqz p1, :cond_3

    .line 304
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 305
    const-string v2, "cloud_token"

    invoke-virtual {p1}, Lcom/zte/oss/entry/CloudToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v5, "https://aigc.ztems.com/aigcapi/oss/config"

    invoke-direct {p0, v1}, Lcom/zte/oss/UpLoadFileController;->getStringContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/zte/oss/UpLoadFileController;->doRequestSync(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/zte/oss/entry/OssConfig;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/oss/entry/OssConfig;

    iput-object v2, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    const-string v3, "get oss failed by Null oss"

    if-eqz v2, :cond_2

    .line 309
    :try_start_1
    invoke-virtual {v2}, Lcom/zte/oss/entry/OssConfig;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    .line 311
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    const-string v4, "ossEndpoint"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/oss/entry/OssConfig;->setOssEndpoint(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    const-string v4, "tempPath"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/oss/entry/OssConfig;->setTempPath(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    const-string v4, "bucketName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/oss/entry/OssConfig;->setBucketName(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 317
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    .line 318
    iput-object v1, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    .line 321
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v1, p1}, Lcom/zte/oss/entry/OssConfig;->setCloudToken(Lcom/zte/oss/entry/CloudToken;)V

    .line 323
    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/zte/oss/entry/OssConfig;->setArrivedTime(J)V

    .line 324
    const-string p0, "get oss end"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 326
    :cond_1
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 329
    :cond_2
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    .line 332
    :cond_3
    const-string p0, "get oss failed by Null token"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 335
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "get oss failed by err, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private getStringContent(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 363
    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "&"

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNeedGetNewOssConfig(Landroid/content/Context;)Z
    .locals 4

    .line 242
    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController;->sOssConfig:Lcom/zte/oss/entry/OssConfig;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/zte/oss/entry/OssConfig;->getArrivedTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private trimImage(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .line 372
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    .line 378
    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x40000000    # 2.0f

    move-object v4, v0

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    if-nez v4, :cond_1

    move-object v4, p1

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {p1, v5, v6}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    .line 391
    invoke-static {v4, p0, v5}, Lcn/nubia/redmagickyi/util/BitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eq v4, p1, :cond_2

    .line 393
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v0

    .line 396
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v4, :cond_4

    .line 405
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v0

    :goto_1
    if-eqz v0, :cond_5

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz v4, :cond_6

    .line 405
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    :cond_6
    throw p0

    :catch_0
    move-object p1, v0

    move-object v4, p1

    :catch_1
    if-eqz p1, :cond_7

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz v4, :cond_8

    .line 405
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public doUploadFileRequest(Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;Lcom/zte/oss/entry/CloudToken;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 137
    :try_start_0
    invoke-virtual {p2}, Lcom/zte/oss/entry/UploadFile;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/oss/UpLoadFileController;->doUploadFileRequestIndeed(Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;Lcom/zte/oss/entry/CloudToken;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    invoke-interface {p4, v0}, Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 143
    const-string p1, "UpLoadFileController"

    const-string p2, "doUploadFileRequestSync failed:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-interface {p4, v0}, Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;->onResult(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getOssConfig(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    monitor-exit v0

    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/zte/oss/UpLoadFileController;->isGettingOssConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    new-instance v0, Lcom/zte/oss/UpLoadFileController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/oss/UpLoadFileController$3;-><init>(Lcom/zte/oss/UpLoadFileController;Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 268
    invoke-virtual {v0, p0, p1}, Lcom/zte/oss/UpLoadFileController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception p0

    .line 260
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
