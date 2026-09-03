.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Input"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

.field private token:Ljava/lang/String;


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

    .line 588
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->startASR()V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->startASRInner(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)Ljava/lang/String;
    .locals 0

    .line 588
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stopASRInner(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)Z
    .locals 0

    .line 588
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->isExcuting()Z

    move-result p0

    return p0
.end method

.method private isExcuting()Z
    .locals 3

    .line 796
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> isExcuting, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->token:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEndExcute()V
    .locals 3

    .line 786
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> onEndExcute, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 787
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-void
.end method

.method private onStartExcute()V
    .locals 3

    .line 791
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> onStartExcute, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->token:Ljava/lang/String;

    return-void
.end method

.method private startASR()V
    .locals 3

    .line 630
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> startASR, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    return-void
.end method

.method private startASRInner(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    :cond_0
    return-void
.end method

.method private stopASR()V
    .locals 3

    .line 767
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> stopASR, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    return-void
.end method

.method private stopASRInner(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 592
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> start, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 594
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setIsIdel(Z)V

    .line 595
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stop()V

    .line 596
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->onStartExcute()V

    .line 597
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->startASR()V

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> request permission, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 624
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> stop, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->onEndExcute()V

    .line 626
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stopASR()V

    return-void
.end method
