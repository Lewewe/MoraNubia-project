.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;
.super Landroid/app/Service;
.source "WindowCommandMicrophoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandMicrophoneService"


# instance fields
.field private mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

.field private speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

.field private speechHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 35
    const-string v0, "WindowCommandMicrophoneService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpeechHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    .line 40
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 68
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onStartCommand, intent = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowCommandMicrophoneService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method public startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 1

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;->showServiceRunForegroundRecording(Landroid/app/Service;)V

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_0
    return-void
.end method

.method public stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 2

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;

    move-result-object v0

    .line 81
    monitor-enter v0

    const/4 v1, 0x1

    .line 82
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;->cancelNotification(Z)V

    .line 83
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/MicrophoneNotificationController;->resetSpeechService()V

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$SpeechHandler;->stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
