.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;
.super Ljava/lang/Object;
.source "WindowCommandService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->bindLocationService(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

.field final synthetic val$onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V
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

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->val$onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 232
    const-string p1, "WindowCommandService"

    const-string v0, "bindLocationService onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    check-cast p2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    iput-object p2, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->onLocationServiceConnection()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;)V

    .line 237
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->val$onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    if-eqz p1, :cond_1

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 244
    const-string p1, "WindowCommandService"

    const-string v0, "bindLocationService onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    .line 246
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->onLocationServiceConnection()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceDisconnected()V

    .line 249
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;->val$onLocationServiceConnection:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;

    if-eqz p0, :cond_1

    .line 250
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceDisconnected()V

    :cond_1
    return-void
.end method
