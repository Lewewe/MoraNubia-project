.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/RecordingListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMicStateChanged()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->shouldBindLocationService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->bindLocationService(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$2200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V

    :goto_0
    return-void
.end method
