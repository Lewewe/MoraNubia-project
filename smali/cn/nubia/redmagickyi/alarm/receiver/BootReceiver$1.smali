.class Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver$1;
.super Landroid/os/Handler;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver$1;->this$0:Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver$1;->this$0:Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/receiver/BootReceiver;->ResetAlarm()V

    :goto_0
    return-void
.end method
