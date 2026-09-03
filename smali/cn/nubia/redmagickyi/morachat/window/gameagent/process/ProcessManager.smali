.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Window-ProcessManager"


# instance fields
.field private accompanyManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

.field private analyze:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

.field private context:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

.field private exitRunner:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

.field private gameAgent:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

.field private input:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

.field private listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

.field private output:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field private wakeup:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

.field private windowManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    .line 93
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->gameAgent:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    .line 95
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 97
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    .line 98
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    .line 99
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    .line 100
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    .line 102
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    .line 165
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->setStateListener(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine$StateListener;)V

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->addListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 180
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->addListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V

    .line 182
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;->showServiceRunForeground(Landroid/app/Service;)V

    return-void
.end method

.method private abort()V
    .locals 2

    .line 220
    const-string v0, "Window-ProcessManager"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->stop()V

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->stop()V

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stop()V

    const/4 p0, 0x1

    .line 224
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->setIsIdel(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->abort()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->gameAgent:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    return-object p0
.end method


# virtual methods
.method public getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    .locals 0

    .line 186
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    return-object p0
.end method

.method public onLocationServiceConnection()Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;
    .locals 0

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public onMicrophoneServiceConnection()Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;
    .locals 0

    .line 194
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 198
    const-string v0, "Window-ProcessManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->removeNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 200
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->removeListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 201
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->removeListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V

    .line 203
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;

    move-result-object v0

    .line 204
    monitor-enter v0

    const/4 v1, 0x1

    .line 205
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;->cancelNotification(Z)V

    .line 206
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/NetworkNotificationController;->resetService()V

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->abort()V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onDestroy()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 207
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
