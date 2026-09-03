.class Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;
.super Landroid/os/Handler;
.source "WindowCommandMicrophoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechHandler"
.end annotation


# static fields
.field private static final MSG_START_ASR:I = 0x0

.field private static final MSG_STOP_ASR:I = 0x1


# instance fields
.field private onASRClientListener:Lcom/zte/aivoice/asr/OnASRClientListener;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field private stopTimestamp:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;Landroid/os/Looper;)V
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

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;

    .line 97
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    .line 93
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopASR()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 105
    invoke-static {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->toRecognizeByMicRecord(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->onASRClientListener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startASR(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 5

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 118
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->onASRClientListener:Lcom/zte/aivoice/asr/OnASRClientListener;

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 125
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "MSG_START_ASR: "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "WindowCommandMicrophoneService"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v2, v0

    .line 126
    invoke-virtual {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 2

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MSG_STOP_ASR: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowCommandMicrophoneService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->sendEmptyMessage(I)Z

    return-void
.end method
