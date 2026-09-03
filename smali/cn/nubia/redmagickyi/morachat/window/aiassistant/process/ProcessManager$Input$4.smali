.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$4;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stopASR()V
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

    .line 768
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    .line 771
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->access$3800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    return-void
.end method

.method public onMicrophoneServiceDisconnected()V
    .locals 0

    return-void
.end method
