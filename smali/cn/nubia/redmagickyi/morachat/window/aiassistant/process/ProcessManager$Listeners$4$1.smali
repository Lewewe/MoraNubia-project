.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;->onMicStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    return-void
.end method

.method public onLocationServiceDisconnected()V
    .locals 0

    return-void
.end method
