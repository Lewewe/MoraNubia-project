.class public Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.super Lcom/zte/aimodel/IVendorAIModelService$Stub;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;,
        Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;,
        Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;,
        Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;,
        Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "LocalAIModelInterfaceManager"

.field static final VENDOR_AI_MODEL_GET_REQUEST_MESSAGE_INTERFACE:I = 0x3

.field static final VENDOR_AI_MODEL_PERFORM_BYTE_INTERFACE:I = 0x1

.field static final VENDOR_AI_MODEL_PERFORM_INTERFACE:I = 0x4

.field static final VENDOR_AI_MODEL_PERFORM_STRING_INTERFACE:I = 0x0

.field static final VENDOR_AI_MODEL_QUERY_REMAIN_TOKEN_INTERFACE:I = 0x2

.field private static sInstance:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;


# instance fields
.field private final Debug:Z

.field private final mContext:Landroid/content/Context;

.field private mHandle:Landroid/os/Handler;

.field private models:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zte/aimodel/redmagickyi/models/IModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/zte/aimodel/IVendorAIModelService$Stub;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->Debug:Z

    .line 79
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$1;-><init>(Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;)V

    iput-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->mHandle:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    .line 56
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->initializeModels()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
    .locals 3

    .line 41
    const-class v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sInstance:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    if-nez v1, :cond_0

    .line 43
    const-string v1, "LocalAIModelInterfaceManager"

    const-string v2, "creating instance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    invoke-direct {v1, p0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sInstance:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "LocalAIModelInterfaceManager"

    const-string v1, "instance already exist, no need to create again"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    sget-object p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sInstance:Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initializeModels()V
    .locals 3

    .line 61
    const-string v0, "LocalAIModelInterfaceManager"

    const-string v1, "initialize models"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanIniTextModel;

    const-string v2, "WenxinYiyanIniTextModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanIniTextModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanProTextModel;

    const-string v2, "WenxinYiyanProTextModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanProTextModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/BytedancePicture/BytedancePictureAnalyzeModel;

    const-string v2, "BytedancePictureAnalyzeModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/BytedancePicture/BytedancePictureAnalyzeModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;

    const-string v2, "GeminiTextModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiTextModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiPictureAnalyzeModel;

    const-string v2, "GeminiPictureAnalyzeModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/Gemini/GeminiPictureAnalyzeModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v1, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;

    const-string v2, "AIMoeTextModel"

    invoke-direct {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    new-instance v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;

    const-string v1, "AIMoePictureAnalyzeModel"

    invoke-direct {v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recordModelUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 248
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 252
    const-string v0, "LocalAIModelInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sending AIModel request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    monitor-enter v0

    .line 260
    :catch_0
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->exception:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 262
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    iget-object p0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->exception:Ljava/lang/Object;

    .line 271
    const-string p0, "LocalAIModelInterfaceManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "AIModel request "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " got response"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p0, v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$VendorAIRequest;->result:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    .line 267
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 249
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearHistory called with modelName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LocalAIModelInterfaceManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zte/aimodel/redmagickyi/models/IModel;

    .line 313
    invoke-virtual {p2}, Lcom/zte/aimodel/redmagickyi/models/IModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p2}, Lcom/zte/aimodel/redmagickyi/models/IModel;->clearHistory()V

    :cond_1
    return-void
.end method

.method public getAIRequestMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 355
    const-string p0, ""

    return-object p0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 0

    .line 322
    const-string p0, ""

    return-object p0
.end method

.method public getModelCapabilities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelCapabilityDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestMessage called with modelName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAIModelInterfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_0
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;

    invoke-direct {v0, p1, p2}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 348
    const-string p1, "getRequestMessage: exception "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getSecuritySerialNo()Ljava/lang/String;
    .locals 0

    .line 437
    const-string p0, ""

    return-object p0
.end method

.method public loadModel(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public performByte(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "modelName:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "pkg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "stream:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LocalAIModelInterfaceManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zte/aimodel/redmagickyi/models/IModel;

    .line 401
    invoke-virtual {p2}, Lcom/zte/aimodel/redmagickyi/models/IModel;->getModelName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 402
    const-string p0, "Unsupported model type."

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    .line 406
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Model not found: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method public performByteInference(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modelName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAIModelInterfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;-><init>(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 390
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 392
    const-string p1, "performByteInference: exception "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public performString(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modelName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "LocalAIModelInterfaceManager"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p5, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    invoke-virtual {p5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/aimodel/redmagickyi/models/IModel;

    .line 364
    invoke-virtual {v1}, Lcom/zte/aimodel/redmagickyi/models/IModel;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v1, p2, p3}, Lcom/zte/aimodel/redmagickyi/models/IModel;->inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p2

    .line 367
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " Result: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, p1, p4, p2}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->recordModelUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 373
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Model not found: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 376
    :try_start_0
    const-string p0, "model not found!"

    invoke-interface {p3, p0}, Lcom/zte/aimodel/IResponseCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public performStringInference(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modelName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAIModelInterfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 332
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 334
    const-string p1, "performStringInference: exception "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public queryRemainToken(Ljava/lang/String;)I
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modelName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAIModelInterfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    new-instance v0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;

    invoke-direct {v0, p1}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 418
    const-string p1, "queryRemainToken: exception "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public queryRemainTokenInf(Ljava/lang/String;)I
    .locals 3

    .line 425
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;->models:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LocalAIModelInterfaceManager"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/redmagickyi/models/IModel;

    .line 426
    invoke-virtual {v0}, Lcom/zte/aimodel/redmagickyi/models/IModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string p0, "Unsupported model type."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 431
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Model not found: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public registerModel(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerModelCapability(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateModel(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
