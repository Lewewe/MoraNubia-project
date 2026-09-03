.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExitRunner -> timeoutRunnable, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAccompanyRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Window-ProcessManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;)V

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    .line 478
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    :goto_0
    return-void
.end method
