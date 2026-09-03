.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeechManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;
    }
.end annotation


# instance fields
.field private lastTTSMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field private speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

.field private speechHandlerThread:Landroid/os/HandlerThread;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

.field private triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1551
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    return-object p0
.end method

.method static synthetic access$4100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;Lcom/zte/aivoice/code/ErrorCode;)Z
    .locals 0

    .line 1551
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->handleErrorCode(Lcom/zte/aivoice/code/ErrorCode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    return-object p0
.end method

.method static synthetic access$4400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    return-object p0
.end method

.method private handleErrorCode(Lcom/zte/aivoice/code/ErrorCode;)Z
    .locals 2

    .line 1726
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1727
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    return v1

    .line 1729
    :cond_0
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_1

    .line 1730
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_session_error_message:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateTTSState(ZLcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1718
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setSaying(Z)V

    .line 1719
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1720
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindTrigger(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)V
    .locals 1

    .line 1585
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    .line 1586
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;)V

    return-void
.end method

.method public init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;
    .locals 3

    .line 1559
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 1560
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1561
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpeechHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    .line 1563
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1566
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    if-nez v0, :cond_2

    .line 1567
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    :cond_2
    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 1742
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->cancel()V

    .line 1745
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1749
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onResume()V

    return-void
.end method

.method public pauseTTS()V
    .locals 0

    .line 1709
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->pauseTTS()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1573
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onDestroy()V

    .line 1574
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1576
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    .line 1578
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1579
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1580
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public resumeTTS()V
    .locals 0

    .line 1713
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->resumeTTS()V

    return-void
.end method

.method public startTTS(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 7

    .line 1650
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->lastTTSMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1651
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->updateTTSState(ZLcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1652
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->stopSpeaking()V

    .line 1654
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->lastTTSMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->updateTTSState(ZLcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1655
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    new-instance v6, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$2;

    invoke-direct {v6, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startTTS(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method public stopTTS()V
    .locals 1

    .line 1705
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->lastTTSMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->stopTTS(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    return-void
.end method

.method public stopTTS(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1698
    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->updateTTSState(ZLcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1699
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->stopSpeaking()V

    .line 1700
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopTTS()V

    :cond_0
    return-void
.end method

.method public switchToSpeechMode(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1635
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->switchToSpeechMode(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    if-eqz p1, :cond_1

    .line 1636
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isWaitAsrResultAfterReleased()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1638
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->createMicRecordingAudioFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1639
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->triggerView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setAudioPath(Ljava/lang/String;)V

    .line 1640
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;->startASR(Ljava/lang/String;)V

    goto :goto_0

    .line 1642
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->speechHandler:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager$SpeechHandler;->startASR(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
