.class Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 56
    sget-object p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Z)Z

    .line 59
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 60
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 65
    sget-object p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Z)Z

    .line 68
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
