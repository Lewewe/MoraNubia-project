.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Window-ProcessManager"


# instance fields
.field private accompanyManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

.field private analyze:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

.field private context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

.field private exitRunner:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

.field private input:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

.field private listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

.field private output:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field private wakeup:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;

.field private windowManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    .line 78
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    .line 79
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$Listener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    .line 80
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

    .line 84
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    .line 85
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    .line 86
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    .line 141
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->setStateListener(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine$StateListener;)V

    .line 152
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 153
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/RecordingListener;->addListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    return-void
.end method

.method private abort()V
    .locals 2

    .line 179
    const-string v0, "Window-ProcessManager"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;->stop()V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->stop()V

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->stop()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->abort()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Wakeup;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->exitRunner:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

    return-object p0
.end method


# virtual methods
.method public getListener()Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    move-result-object p0

    return-object p0
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 73
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public onLocationServiceConnection()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;
    .locals 0

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 165
    const-string v0, "Window-ProcessManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->removeNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->removeListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 170
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->abort()V

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onDestroy()V

    :cond_0
    return-void
.end method
