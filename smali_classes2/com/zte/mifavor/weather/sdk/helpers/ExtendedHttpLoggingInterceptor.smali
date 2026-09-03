.class public Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "ExtendedHttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;,
        Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

.field private final loggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;->DEFAULT:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;-><init>(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method private constructor <init>(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->loggers:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->NONE:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->level:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 36
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->addLogger(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;

    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .locals 0

    .line 196
    const-string p0, "Content-Encoding"

    invoke-virtual {p1, p0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 197
    const-string p1, "identity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->loggers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;

    .line 62
    invoke-interface {v0, p1}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 201
    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addLogger(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->loggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getLevel()Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->level:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1c

    .line 71
    iget-object v2, v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->level:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    .line 72
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 73
    sget-object v4, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->NONE:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    .line 74
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    sget-object v4, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    const/4 v6, 0x1

    if-eq v2, v4, :cond_2

    sget-object v4, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY_WITH_HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 77
    :goto_1
    sget-object v7, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY_WITH_HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    if-eq v2, v7, :cond_4

    sget-object v7, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->HEADERS:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v6

    .line 78
    :goto_3
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 80
    :goto_4
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 81
    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v8

    goto :goto_5

    :cond_6
    sget-object v8, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 82
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    const-string v9, "-byte body)"

    const-string v11, " ("

    if-nez v2, :cond_7

    if-eqz v6, :cond_7

    .line 84
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    :cond_7
    invoke-direct {v0, v8}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 88
    const-string v8, ": "

    const-string v12, ""

    const-string v13, "Content-Type"

    const-wide/16 v14, -0x1

    if-eqz v2, :cond_11

    if-eqz v6, :cond_9

    .line 90
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Content-Type: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 94
    :cond_8
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v18

    cmp-long v5, v18, v14

    if-eqz v5, :cond_9

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Content-Length: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 99
    :cond_9
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    .line 102
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v10, :cond_c

    .line 103
    invoke-virtual {v5, v14}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    .line 104
    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_a

    move/from16 v20, v10

    const-string v10, "Content-Length"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v14}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move/from16 v20, v10

    :cond_b
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v20

    goto :goto_6

    .line 109
    :cond_c
    const-string v5, "--> END "

    if-eqz v4, :cond_10

    if-eqz v6, :cond_10

    .line 110
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (encoded body omitted)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 113
    :cond_d
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 114
    invoke-virtual {v7, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 115
    sget-object v10, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 116
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 118
    invoke-virtual {v14, v10}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object v10, v14

    .line 124
    :cond_e
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/$"

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 125
    const-string v15, "token"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "users/with-email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "users/credentials"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 126
    invoke-virtual {v6, v10}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 128
    :cond_f
    invoke-virtual {v6, v10}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 129
    const-string v10, "password\":\"([^\"]*)"

    const-string v14, "password\":\"*****"

    invoke-virtual {v6, v10, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 132
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 135
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 139
    :cond_11
    :goto_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 140
    invoke-interface {v1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 141
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 142
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_12

    const-wide/16 v14, 0x0

    goto :goto_a

    .line 143
    :cond_12
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v20

    move-wide/from16 v14, v20

    :goto_a
    const-wide/16 v18, -0x1

    cmp-long v7, v14, v18

    if-eqz v7, :cond_13

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-byte"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_13
    const-string v7, "unknown-length"

    .line 145
    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    const-string v12, "<-- "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v12, 0x20

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v17, v9

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_14
    move-object/from16 v12, v18

    :goto_c
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_17

    .line 147
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_17

    .line 151
    invoke-virtual {v2, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    const-string v9, "Date"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string v9, "x-"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 153
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 158
    :cond_17
    const-string v2, "<-- END HTTP"

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    .line 159
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 160
    const-string v2, "<-- END HTTP (encoded body omitted)"

    invoke-direct {v0, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 162
    :cond_18
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    .line 163
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 164
    invoke-interface {v4}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v4

    .line 165
    sget-object v5, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 166
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 169
    :try_start_0
    invoke-virtual {v3, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_19

    move-object v5, v2

    goto :goto_e

    .line 174
    :catch_0
    const-string v3, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-direct {v0, v3}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 175
    invoke-direct {v0, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object v1

    :cond_19
    :goto_e
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_1a

    .line 181
    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 184
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<-- END HTTP ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 187
    :cond_1b
    invoke-direct {v0, v2}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->log(Ljava/lang/String;)V

    :goto_f
    return-object v1

    .line 69
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "chain is marked non-null but is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLevel(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->level:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "level == null. Use Level.NONE instead."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
