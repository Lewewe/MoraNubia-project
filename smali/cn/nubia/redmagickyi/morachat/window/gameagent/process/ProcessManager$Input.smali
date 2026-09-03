.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Input"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

.field private token:Ljava/lang/String;


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

    .line 851
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Z
    .locals 0

    .line 851
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->isExcuting()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)V
    .locals 0

    .line 851
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->startASR()V

    return-void
.end method

.method static synthetic access$3500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    .line 851
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->startASRInner(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    .line 851
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->stopASRInner(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    return-void
.end method

.method private isExcuting()Z
    .locals 2

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> isExcuting, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->token:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEndExcute()V
    .locals 2

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onEndExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1050
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-void
.end method

.method private onStartExcute()V
    .locals 2

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onStartExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-void
.end method

.method private startASR()V
    .locals 2

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> startASR, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    return-void
.end method

.method private startASRInner(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 2

    .line 906
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_0
    return-void
.end method

.method private stopASR()V
    .locals 2

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> stopASR, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    return-void
.end method

.method private stopASRInner(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> start, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 857
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->setIsIdel(Z)V

    .line 858
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->stop()V

    .line 859
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->onStartExcute()V

    .line 860
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->startASR()V

    goto :goto_0

    .line 863
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Input -> request permission, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> stop, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->onEndExcute()V

    .line 889
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->stopASR()V

    return-void
.end method
