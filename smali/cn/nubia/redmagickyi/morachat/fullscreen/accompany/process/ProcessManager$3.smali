.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;


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

    .line 194
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;->val$context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;)V
    .locals 2

    .line 198
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

    const-string v0, "Accompany-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    if-ne p2, p1, :cond_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;->val$context:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->comfirmWakeupEnable()Z

    .line 202
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->onStateMachineChanged()V

    return-void
.end method
