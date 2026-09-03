.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Text2Text"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;


# direct methods
.method private constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->getResponse(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConnectStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 245
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 244
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method private getResponse(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$1600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text2Text history_length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$1700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$1400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :cond_0
    :goto_0
    const/16 v3, 0xc8

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v2, v4, :cond_5

    .line 178
    :try_start_0
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->text2text()Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 183
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 184
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const v5, 0x249f0

    .line 185
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 186
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 187
    const-string v5, "Cache-Control"

    const-string v6, "no-cache"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 188
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 189
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_1
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 194
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 196
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 198
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 201
    iget-object v5, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v5}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$1800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    const-string v5, "[tempRetry:"

    if-eq v1, v3, :cond_2

    .line 203
    :try_start_2
    iget-object v3, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$1900(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->onUrlUnreachable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    .line 228
    :goto_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 208
    :cond_2
    :try_start_3
    invoke-direct {p0, v4}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->getConnectStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 209
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v6, "code"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    iget-object v6, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v6}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2000(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response Code of result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]Response Code of result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    goto :goto_2

    .line 217
    :cond_3
    const-string v5, "data"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "generation"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    .line 228
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v5, v4

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v5, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v3

    .line 222
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->onUrlUnreachable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v2, v2, 0x1

    if-eqz v5, :cond_0

    .line 228
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    :cond_4
    throw p0

    :cond_5
    :goto_5
    if-ne v1, v3, :cond_6

    return-object v5

    .line 234
    :cond_6
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Text2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {p0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2200(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[AfterMaxRetry]Response Code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/ErrorCode;->toJson(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
