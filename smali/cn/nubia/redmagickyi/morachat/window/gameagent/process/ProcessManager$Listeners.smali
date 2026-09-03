.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listeners"
.end annotation


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

.field private isScreenOn:Ljava/lang/Boolean;

.field private netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

.field private onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

.field private onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;

.field private onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;

.field private recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

.field private wmListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    .line 375
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->wmListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    .line 488
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    .line 503
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$4;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    .line 510
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$5;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;

    .line 520
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$6;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;

    .line 528
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->wmListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$Listener;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;

    return-object p0
.end method

.method static synthetic access$2002(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 227
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public isScreenOn()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    .line 240
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
