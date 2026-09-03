.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;


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

.field final synthetic val$context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V
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

    .line 151
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V
    .locals 3

    .line 155
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStateMathineChanged, oldState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", newState: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->comfirmWakeupEnable()V

    goto :goto_0

    .line 158
    :cond_0
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_OUTPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-ne p2, p1, :cond_2

    .line 159
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->comfirmWakeupEnable()V

    .line 161
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->onStateMachineChanged()V

    return-void
.end method
