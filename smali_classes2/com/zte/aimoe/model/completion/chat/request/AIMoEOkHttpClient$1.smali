.class Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;
.super Ljava/lang/Object;
.source "AIMoEOkHttpClient.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;
    }
.end annotation


# instance fields
.field private final eventHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

.field final synthetic val$api_tail:Ljava/lang/String;

.field final synthetic val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

.field final synthetic val$fullUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->this$0:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$fullUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$api_tail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;

    invoke-direct {p1, p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;)V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->eventHandlers:Ljava/util/Map;

    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 2

    .line 209
    :try_start_0
    const-class v0, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;

    invoke-static {p1, v0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;

    if-eqz v0, :cond_1

    .line 210
    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;->eventType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, v0, Lcom/zte/aimoe/model/completion/chat/event/BaseEvent;->eventType:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->eventHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 219
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->dispatch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    :try_start_2
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {v0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 229
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {p0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {p0, p2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "Empty response body from URL: "

    .line 93
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const-string v1, "<html"

    const-string v2, "<!DOCTYPE"

    if-nez v0, :cond_5

    .line 95
    const-string p1, "Content-Type"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 99
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    .line 97
    :try_start_2
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 101
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read error body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_2
    :goto_2
    const-string v3, "text/html"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$fullUrl:Ljava/lang/String;

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 111
    const-string p2, "HTTP %d %s - URL: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V

    goto :goto_4

    .line 108
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$fullUrl:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 107
    const-string p2, "Server returned HTML error page (HTTP %d) - URL: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V

    :goto_4
    return-void

    .line 118
    :cond_5
    :try_start_4
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez p2, :cond_7

    .line 120
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$fullUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_6

    .line 154
    :try_start_6
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    return-void

    .line 125
    :cond_7
    :try_start_7
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    :goto_5
    invoke-interface {p1}, Lokio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v3, :cond_e

    .line 131
    :try_start_8
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 137
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    .line 143
    :cond_9
    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {v4, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onSuccess(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$api_tail:Ljava/lang/String;

    const-string v5, "chat/completions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    .line 147
    :cond_a
    invoke-direct {p0, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->handleEvent(Ljava/lang/String;)V

    goto :goto_5

    .line 138
    :cond_b
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server returned HTML instead of JSON in chunk "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p2, :cond_c

    .line 154
    :try_start_9
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_c
    return-void

    :catch_1
    move-exception p1

    .line 149
    :try_start_a
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {v0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz p2, :cond_d

    .line 154
    :try_start_b
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    :cond_d
    return-void

    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_8

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_f

    .line 118
    :try_start_c
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    :try_start_d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    move-exception p1

    .line 155
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-interface {p0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onError(Ljava/lang/Exception;)V

    :cond_10
    :goto_8
    return-void
.end method
