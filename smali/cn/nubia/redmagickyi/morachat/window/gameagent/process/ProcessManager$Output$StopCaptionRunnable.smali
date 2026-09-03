.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopCaptionRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1594
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V
    .locals 0

    .line 1594
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1597
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->stopCaption()V

    .line 1598
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->stopMenuTextArea()V

    return-void
.end method
