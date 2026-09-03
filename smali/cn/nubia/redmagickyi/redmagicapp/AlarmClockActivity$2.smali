.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 324
    const-string p1, "AlarmClockActivity"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$302(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 327
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 328
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 329
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->createBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 330
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 332
    :try_start_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Landroid/os/Messenger;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 333
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 343
    const-string p0, "AlarmClockActivity"

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
