.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listeners"
.end annotation


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

.field private isScreenOn:Ljava/lang/Boolean;

.field private netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

.field private onDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

.field private onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;

.field private onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

.field private recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

.field private wmListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 261
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    .line 389
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->wmListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    .line 437
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    .line 452
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$5;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$5;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    .line 459
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$6;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$6;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;

    .line 469
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$7;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$7;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    .line 477
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->wmListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$Listener;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onGameSceneChangedListener:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    return-object p0
.end method

.method static synthetic access$2102(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public isScreenOn()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 225
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 228
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    .line 231
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
