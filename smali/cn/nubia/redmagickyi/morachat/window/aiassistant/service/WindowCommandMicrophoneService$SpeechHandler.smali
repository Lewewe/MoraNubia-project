.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;
.super Landroid/os/Handler;
.source "WindowCommandMicrophoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;
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

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;Landroid/os/Looper;)V
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

    .line 93
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    .line 94
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    .line 90
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 99
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopASR()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->toRecognizeByMicRecord(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->onASRClientListener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startASR(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 115
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->onASRClientListener:Lcom/zte/aivoice/asr/OnASRClientListener;

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 122
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MSG_START_ASR: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v2, v0

    .line 123
    invoke-virtual {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 3

    .line 127
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    .line 129
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSG_STOP_ASR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->stopTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->removeMessages(I)V

    .line 132
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->sendEmptyMessage(I)Z

    return-void
.end method
