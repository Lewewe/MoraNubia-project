.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputCompletedRunnable"
.end annotation


# instance fields
.field private outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1253
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;)V
    .locals 0

    .line 1253
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)V

    return-void
.end method

.method static synthetic access$4902(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 0

    .line 1253
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1257
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output -> onOutputCompleted, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outputEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Out.outputEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1261
    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1263
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1264
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$5000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Output -> OutputCompletedRunnable, perform exit now by exit id"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1270
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->isNormalEntry()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->isChatEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    .line 1271
    :goto_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1272
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Output -> OutputCompletedRunnable, perform exit now by game scene"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$2800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;)V

    return-void

    .line 1276
    :cond_5
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;)V

    .line 1279
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->stopCaption()V

    .line 1280
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1281
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Z)V

    goto :goto_3

    .line 1283
    :cond_6
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->stop()V

    if-eqz v0, :cond_7

    .line 1285
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V

    .line 1286
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->start()V

    goto :goto_3

    .line 1288
    :cond_7
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setIsIdel(Z)V

    .line 1291
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->start(Z)Z

    :cond_8
    return-void
.end method
