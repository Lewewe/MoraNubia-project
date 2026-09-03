.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;
.super Ljava/lang/Object;
.source "WindowCommandService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

.field final synthetic val$onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V
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

    .line 215
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->val$onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 218
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bindMicrophoneService onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    check-cast p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$402(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    .line 220
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->onMicrophoneServiceConnection()Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->val$onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    if-eqz p1, :cond_1

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 230
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bindMicrophoneService onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$402(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->onMicrophoneServiceConnection()Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceDisconnected()V

    .line 235
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;->val$onMicrophoneServiceConnection:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;

    if-eqz p0, :cond_1

    .line 236
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceDisconnected()V

    :cond_1
    return-void
.end method
