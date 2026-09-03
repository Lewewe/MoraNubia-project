.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/RecordingListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMicStateChanged()V
    .locals 0

    .line 365
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$1500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)V

    return-void
.end method
