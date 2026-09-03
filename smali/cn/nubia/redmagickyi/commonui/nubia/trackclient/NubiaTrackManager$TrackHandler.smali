.class final Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    .line 78
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 120
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Z)Z

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$400(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$400(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$500(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    .line 126
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 86
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;

    .line 88
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    .line 90
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 97
    :cond_4
    :try_start_2
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :try_start_3
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 100
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    .line 115
    :goto_0
    invoke-interface {v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;->onEventSendComplete()V

    goto :goto_1

    .line 102
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    iput-boolean v1, v3, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isBind:Z

    .line 103
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$300(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)V

    .line 104
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 105
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 108
    :cond_6
    monitor-exit v0

    if-eqz v2, :cond_7

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 112
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    if-eqz v2, :cond_7

    goto :goto_0

    :catch_1
    move-exception p0

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_8

    .line 115
    invoke-interface {v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;->onEventSendComplete()V

    .line 117
    :cond_8
    throw p0

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 92
    invoke-interface {v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;->onEventSendComplete()V

    :cond_a
    return-void
.end method
