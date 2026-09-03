.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

.field final synthetic val$context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V
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

    .line 141
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateMathineChanged, oldState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", newState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-ne p2, p1, :cond_1

    .line 147
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;->val$context:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->comfirmWakeupEnable()V

    .line 149
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->onStateMachineChanged()V

    return-void
.end method
