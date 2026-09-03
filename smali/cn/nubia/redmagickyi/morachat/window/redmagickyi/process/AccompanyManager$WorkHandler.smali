.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;
.super Landroid/os/Handler;
.source "AccompanyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_WORK:I


# instance fields
.field private isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;Landroid/os/Looper;)V
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

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    .line 51
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 56
    const-string v0, "perform analyze with check"

    const-string v1, "Window-AccompanyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "perform analyze soon, isHightResponseDuration: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "perform analyze"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Lcom/zte/screenshot/ScreenShoter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/screenshot/ScreenShoter;->loadScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;Landroid/graphics/Bitmap;Z)V

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/oss/entry/UploadFile;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;)V

    invoke-direct {v6, v2, v0}, Lcom/zte/oss/entry/UploadFile;-><init>(ILcom/zte/oss/entry/UploadFile$FileGetter;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startImage2TextSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    .line 77
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
