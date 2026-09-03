.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accompanyManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

.field private analyze:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

.field private context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private exitRunner:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

.field private input:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

.field private listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

.field private output:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field private wakeup:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

.field private windowManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window-ProcessManager-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 84
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 85
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    .line 86
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    .line 89
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    .line 90
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    .line 151
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setStateListener(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;)V

    .line 164
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->addListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 166
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->addListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V

    .line 167
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 168
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object p0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 170
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->showServiceRunForeground(Landroid/app/Service;)V

    return-void
.end method

.method private abort(Z)V
    .locals 2

    .line 211
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->TAG:Ljava/lang/String;

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stop()V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->stop()V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->stop()V

    .line 215
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setIsIdel(Z)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->displayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->abort(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    return-object p0
.end method


# virtual methods
.method public getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    .locals 0

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    return-object p0
.end method

.method public onLocationServiceConnection()Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;
    .locals 0

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public onMicrophoneServiceConnection()Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;
    .locals 0

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 186
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->removeNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->removeListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 189
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->removeListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 194
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;

    move-result-object v0

    .line 195
    monitor-enter v0

    const/4 v1, 0x1

    .line 196
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->cancelNotification(Z)V

    .line 197
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->resetService()V

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->abort(Z)V

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onDestroy()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
