.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;
.super Landroid/os/Handler;
.source "AccompanyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_WORK:I


# instance fields
.field private isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "perform analyze with check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$Callback;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "perform analyze soon, isHightResponseDuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 70
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "perform analyze"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Lcom/zte/screenshot/ScreenShoter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/screenshot/ScreenShoter;->loadScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;Landroid/graphics/Bitmap;Z)V

    .line 75
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->supportedImage2Text()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    const-string v2, "image"

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zte/oss/entry/UploadFile;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;)V

    invoke-direct {v5, v1, v0}, Lcom/zte/oss/entry/UploadFile;-><init>(ILcom/zte/oss/entry/UploadFile$FileGetter;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startImage2TextSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    .line 94
    :cond_2
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method
