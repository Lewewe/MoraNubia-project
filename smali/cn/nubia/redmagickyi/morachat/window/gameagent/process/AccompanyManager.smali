.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;
.super Ljava/lang/Object;
.source "AccompanyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;
    }
.end annotation


# static fields
.field private static final DURATION_HIGH:I = 0x0

.field private static final DURATION_LOW:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "Window-AccompanyManager"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;

.field private chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field private context:Landroid/content/Context;

.field private screenShoter:Lcom/zte/screenshot/ScreenShoter;

.field private screenshotFile:Ljava/io/File;

.field private screenshotFileTemp:Ljava/io/File;

.field private workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

.field private workThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->callback:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "chat/image_screenshot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFile:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "chat/image_screenshot_temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "window accompany thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workThread:Landroid/os/HandlerThread;

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    .line 116
    :cond_1
    :goto_0
    new-instance v0, Lcom/zte/screenshot/ScreenShoter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zte/screenshot/ScreenShoter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenShoter:Lcom/zte/screenshot/ScreenShoter;

    .line 117
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->callback:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isBotRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isHightResponseDuration()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)J
    .locals 2

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->getDelayed()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Lcom/zte/screenshot/ScreenShoter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenShoter:Lcom/zte/screenshot/ScreenShoter;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->saveBitmapFile(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Ljava/io/File;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getDelayed()J
    .locals 2

    .line 166
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isHightResponseDuration()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4e20

    :goto_0
    return-wide v0
.end method

.method private isBotRunning()Z
    .locals 4

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object p0

    .line 224
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 227
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 228
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 229
    const-string p0, "Window-AccompanyManager"

    const-string v0, "bot is still running!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method private isHightResponseDuration()Z
    .locals 1

    .line 170
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p0

    return p0
.end method

.method private saveBitmapFile(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 247
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 253
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_2

    .line 254
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/16 p2, 0x5a

    :goto_1
    invoke-virtual {p1, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 256
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 257
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 258
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 260
    :cond_4
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFile:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 262
    :try_start_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_6

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 268
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    return-void

    :goto_3
    if-eqz p1, :cond_8

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 268
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->screenshotFileTemp:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 270
    :cond_9
    throw p2
.end method

.method private stop()V
    .locals 2

    .line 214
    const-string v0, "Window-AccompanyManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopImage2TextSession()V

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->callback:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;->onAccompanyStopped()V

    return-void
.end method


# virtual methods
.method public isAccompanyEnable()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->callback:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;->isWindowOnlyTTSFromGameAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isAccompanySwitchOn()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAccompanySwitchOn()Z
    .locals 1

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p0

    return p0
.end method

.method public isFullScreenAccompanyRunning()Z
    .locals 1

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->isSceneRunning(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result p0

    return p0
.end method

.method public start(Z)Z
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Window-AccompanyManager"

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const-string v0, "already is loop, not need to restart"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->getDelayed()J

    move-result-wide p0

    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    :cond_1
    const-string p0, "start success"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->stop()V

    .line 208
    const-string p0, "start failed"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startWithCheck(Ljava/lang/Runnable;)Z
    .locals 3

    .line 174
    const-string v0, "Window-AccompanyManager"

    const-string v1, "startWithCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->context:Landroid/content/Context;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->checkEnableStartImage2TextSession(Landroid/content/Context;Lcom/zte/utils/MyRunnable;)V

    const/4 p0, 0x1

    return p0

    .line 191
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->stop()V

    const/4 p0, 0x0

    return p0
.end method
