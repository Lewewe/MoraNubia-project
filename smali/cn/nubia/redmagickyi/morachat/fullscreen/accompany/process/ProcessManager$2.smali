.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

.field final synthetic val$context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableAnalyze()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 180
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 183
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 186
    :cond_3
    const-string p0, "Accompany-ProcessManager"

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityMotionPlaying(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public onAccompanyStopped()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->isAccompanyEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnalyzeCompleted(Ljava/lang/String;)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    :cond_0
    return-void
.end method

.method public onAnalyzeFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->handleOnChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ILcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    :cond_0
    return-void
.end method
