.class Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;
.super Ljava/lang/Object;
.source "GeminiTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Image2Text"
.end annotation


# instance fields
.field private final BOUNDARY:Ljava/lang/String;

.field private final CONTENT_TYPE:Ljava/lang/String;

.field private final LINE_END:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;


# direct methods
.method private constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->BOUNDARY:Ljava/lang/String;

    .line 256
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->LINE_END:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/form-data; boundary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;-><init>(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->getResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addFilePart(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 402
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\"; filename=\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\"\r\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 404
    const-string p0, "Content-Type: image/jpeg\r\n"

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 408
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x2000

    .line 409
    new-array p2, p2, [B

    .line 411
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 415
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private addStringPart(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\"\r\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 392
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private createTempImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 269
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 270
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p1, 0x400

    .line 271
    invoke-static {p0, p1, p1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v0, "GeminiTextModel"

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/utils/CacheFile;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 283
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-static {p1, p0, v0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eqz p1, :cond_3

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 290
    :cond_4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 262
    invoke-direct {p0, p2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->createTempImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 263
    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v1}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2300(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image2Text history_length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$1700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;->access$1400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$HistoryManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", imagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", body = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p1, v0, p3}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->submitForm(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 425
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 429
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 423
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private submitForm(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
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

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 296
    const-string v3, "--"

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x0

    move v6, v0

    move v7, v4

    move-object v8, v5

    :cond_0
    :goto_0
    const/16 v9, 0xc8

    const/4 v0, 0x5

    if-ge v7, v0, :cond_a

    .line 306
    :try_start_0
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->image2text()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 310
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 311
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const v0, 0x249f0

    .line 312
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 313
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 314
    const-string v0, "Cache-Control"

    const-string v11, "no-cache"

    invoke-virtual {v10, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 315
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 316
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :cond_1
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 324
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    const-string v0, "message"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v12, p1

    :try_start_3
    invoke-direct {v1, v11, v0, v12}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->addStringPart(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v12, p1

    :goto_2
    if-eqz v2, :cond_3

    .line 328
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    const-string v0, "image"

    invoke-direct {v1, v11, v0, v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->addFilePart(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 332
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 336
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 337
    iget-object v0, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2400(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response Code: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    const-string v0, "[tempRetry:"

    if-eq v6, v9, :cond_5

    .line 339
    :try_start_4
    iget-object v8, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2500(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "]Response Code: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->onUrlUnreachable()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v7, v7, 0x1

    .line 365
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 367
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v10, :cond_4

    .line 371
    :goto_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v8, v11

    goto/16 :goto_0

    .line 344
    :cond_5
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 345
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    const-string v8, "code"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 347
    iget-object v8, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2600(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response Code of result: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v9, :cond_6

    .line 349
    iget-object v8, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2700(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "]Response Code of result: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v7, v7, 0x1

    .line 365
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 367
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz v10, :cond_4

    goto :goto_4

    .line 353
    :cond_6
    :try_start_8
    const-string v0, "data"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "generation"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 365
    :try_start_9
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 367
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-eqz v10, :cond_a

    .line 371
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v10

    move-object v8, v11

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v12, p1

    :goto_7
    move-object v8, v11

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v12, p1

    move-object v10, v5

    .line 358
    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;->onUrlUnreachable()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    add-int/lit8 v7, v7, 0x1

    if-eqz v8, :cond_7

    .line 365
    :try_start_b
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v9, v0

    .line 367
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_9
    if-eqz v10, :cond_0

    .line 371
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v5, v10

    :goto_a
    if-eqz v8, :cond_8

    .line 365
    :try_start_c
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 367
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_b
    if-eqz v5, :cond_9

    .line 371
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 373
    :cond_9
    throw v1

    :cond_a
    :goto_c
    if-ne v6, v9, :cond_b

    return-object v5

    .line 377
    :cond_b
    iget-object v0, v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel$Image2Text;->this$0:Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    invoke-static {v0}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;->access$2800(Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AfterMaxRetry]Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v6}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/ErrorCode;->toJson(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
