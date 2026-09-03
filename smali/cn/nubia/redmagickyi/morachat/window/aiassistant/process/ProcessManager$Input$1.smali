.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionAllow()V
    .locals 3

    .line 612
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> permission allow, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-ne v0, v1, :cond_0

    .line 614
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;)V

    .line 615
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V

    :cond_0
    return-void
.end method

.method public onPermissionDisallow()V
    .locals 3

    .line 604
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> permission disallow, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    if-ne v0, v1, :cond_0

    .line 606
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Z)V

    :cond_0
    return-void
.end method
