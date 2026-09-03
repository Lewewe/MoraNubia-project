.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->onMicStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$2200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V

    return-void
.end method

.method public onLocationServiceDisconnected()V
    .locals 0

    return-void
.end method
