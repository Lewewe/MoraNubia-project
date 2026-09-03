.class public Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Accompany-ProcessManager"


# instance fields
.field private accompanyManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

.field private analyze:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

.field private context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

.field private input:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

.field private listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

.field private output:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

.field private speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field private wakeup:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

.field private windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    .line 78
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    .line 79
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    .line 80
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    .line 84
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    .line 135
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    .line 194
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->setStateListener(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;)V

    .line 205
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/RecordingListener;->addListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    const-string p1, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;->onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private abort(Z)V
    .locals 2

    .line 264
    const-string v0, "Accompany-ProcessManager"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->stop()V

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->stop()V

    .line 267
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->stop(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->wakeup:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Wakeup;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->accompanyManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->abort(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->output:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->input:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->analyze:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    return-object p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    return-object p0
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 73
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 242
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onPause()V

    .line 246
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideUserPop()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 235
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onResume()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 250
    const-string v0, "Accompany-ProcessManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->removeNetTypeChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;)V

    .line 252
    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->listeners:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->access$1100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/RecordingListener;->removeListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->windowManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->release()V

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->abort(Z)V

    .line 258
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->onDestroy()V

    :cond_0
    return-void
.end method
