.class public abstract Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.super Ljava/lang/Object;
.source "OKHttpController.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "LoadTask"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mClient:Lokhttp3/OkHttpClient;

.field protected mDataClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TOutput;>;"
        }
    .end annotation
.end field

.field protected mDataItemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mGson:Lcom/google/gson/Gson;

.field private mRetryTime:I

.field private mSyncRequest:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutput;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;


# direct methods
.method protected constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mClient:Lokhttp3/OkHttpClient;

    .line 81
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mGson:Lcom/google/gson/Gson;

    .line 324
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method private addHeaders(Lcn/nubia/redmagickyi/network/okhttp/Url;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 1

    .line 190
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getHeaders()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 193
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private asyncRequest(Lokhttp3/Request;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$002(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Lokhttp3/Call;)Lokhttp3/Call;

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$000(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private bindBody(Lcn/nubia/redmagickyi/network/okhttp/Url;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getBody()Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->setQuery(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    .line 185
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object p2
.end method

.method private final checkIfDisableHttpConnection()Z
    .locals 3

    .line 205
    sget-boolean v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->enableHttpConnection:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$102(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Z)Z

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 207
    invoke-virtual {p0, v0, v2}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private syncRequest(Lokhttp3/Request;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$002(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Lokhttp3/Call;)Lokhttp3/Call;

    .line 169
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$000(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$000(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Lokhttp3/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$000(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Lokhttp3/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected convertData(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)V
    .locals 8

    const/4 v0, 0x2

    .line 246
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataItemClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataClazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    const-class v4, Ljava/util/List;

    new-array v5, v2, [Ljava/lang/reflect/Type;

    iget-object v6, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataItemClass:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataClazz:Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 256
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 261
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 259
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected getBody()Ljava/lang/String;
    .locals 4

    .line 364
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodGetParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 369
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 371
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 374
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getParamsEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/utils/OkStringUtils;->getRequestParamValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 381
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mGson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method protected getMaxRetryTime()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getParamsEncoding()Ljava/lang/String;
    .locals 0

    .line 337
    const-string p0, "UTF-8"

    return-object p0
.end method

.method protected abstract getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
.end method

.method public load(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TOutput;>;)TOutput;"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->checkIfDisableHttpConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataClazz:Ljava/lang/Class;

    .line 141
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethod()I

    move-result v0

    .line 145
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->postBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->bindBody(Lcn/nubia/redmagickyi/network/okhttp/Url;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 155
    :goto_0
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->addHeaders(Lcn/nubia/redmagickyi/network/okhttp/Url;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 158
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mSyncRequest:Z

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->syncRequest(Lokhttp3/Request;)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->asyncRequest(Lokhttp3/Request;)V

    .line 163
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->result:Ljava/lang/Object;

    return-object p0
.end method

.method public load2List(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataItemClass:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const/4 p1, 0x2

    .line 215
    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    return-void
.end method

.method protected onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 220
    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 221
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->convertData(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)V

    return-void

    .line 226
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p2, 0x194

    if-ne p1, p2, :cond_1

    .line 227
    new-instance p1, Ljava/net/MalformedURLException;

    invoke-direct {p1}, Ljava/net/MalformedURLException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    return-void

    .line 231
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->sendMessage(Ljava/lang/Object;I)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    :goto_0
    return-void
.end method

.method protected postBody()Lokhttp3/RequestBody;
    .locals 5

    .line 344
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostJson()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    .line 348
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getParamsEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/redmagickyi/network/okhttp/utils/OkStringUtils;->getRequestParamValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method protected sendMessage(Ljava/lang/Object;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 275
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    goto :goto_0

    .line 279
    :cond_0
    new-instance p1, Ljava/net/MalformedURLException;

    invoke-direct {p1}, Ljava/net/MalformedURLException;-><init>()V

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    .line 284
    :cond_2
    :goto_0
    instance-of v2, p1, Ljava/net/MalformedURLException;

    if-nez v2, :cond_4

    .line 286
    iget v2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mRetryTime:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mRetryTime:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getMaxRetryTime()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 287
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataItemClass:Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 288
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->load2List(Ljava/lang/Class;)V

    goto :goto_1

    .line 290
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mDataClazz:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x0

    .line 296
    iput v2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mRetryTime:I

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 300
    iput p2, v2, Landroid/os/Message;->what:I

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne p2, v0, :cond_5

    .line 303
    const-string p2, "HttpController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] request success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->result:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->onSuccess(Ljava/lang/Object;)V

    .line 305
    monitor-enter p0

    .line 306
    :try_start_1
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    if-ne p2, v1, :cond_8

    .line 309
    const-string p2, "HttpController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] request failed, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$100(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "cancelByUser"

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->access$100(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 312
    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    goto :goto_3

    .line 314
    :cond_7
    new-instance p2, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(Ljava/lang/Exception;)V

    move-object p1, p2

    .line 316
    :goto_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 317
    monitor-enter p0

    .line 318
    :try_start_2
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 321
    :cond_8
    :goto_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_2
    move-exception p1

    .line 301
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public setSyncRequest(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->mSyncRequest:Z

    return-void
.end method
