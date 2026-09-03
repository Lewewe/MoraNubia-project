.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableAnalyze()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 134
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 137
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityMotionPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 140
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->isMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    .line 143
    :cond_5
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public onAccompanyStopped()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->isAccompanyEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnalyzeCompleted(Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V

    :cond_0
    return-void
.end method

.method public onAnalyzeFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->handleOnChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ILcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V

    :cond_0
    return-void
.end method
