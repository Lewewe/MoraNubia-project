.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;
.super Landroid/app/Service;
.source "WindowCommandMicrophoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

.field private speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

.field private speechHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowCommandMicrophoneService-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 32
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpeechHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    .line 37
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 65
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 47
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand, intent = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method public startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 1

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;->showServiceRunForegroundRecording(Landroid/app/Service;)V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_0
    return-void
.end method

.method public stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 2

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;

    move-result-object v0

    .line 78
    monitor-enter v0

    const/4 v1, 0x1

    .line 79
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;->cancelNotification(Z)V

    .line 80
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/MicrophoneNotificationController;->resetSpeechService()V

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->speechHandler:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$SpeechHandler;->stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
