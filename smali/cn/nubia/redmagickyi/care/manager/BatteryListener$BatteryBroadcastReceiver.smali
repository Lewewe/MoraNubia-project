.class Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/care/manager/BatteryListener;Lcn/nubia/redmagickyi/care/manager/BatteryListener$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_0
    const-string p1, ""

    .line 56
    :goto_0
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BatteryListener"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$200(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$202(Lcn/nubia/redmagickyi/care/manager/BatteryListener;Z)Z

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "battery ACTION_POWER_DISCONNECTED, mIsPowerConnect = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$200(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;->onStatePowerDisconnected()V

    goto/16 :goto_5

    .line 58
    :cond_2
    :goto_1
    const-string p1, "status"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v4

    .line 61
    :goto_3
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v2

    .line 63
    :goto_4
    invoke-static {}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v4

    .line 68
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "battery ACTION_POWER_CONNECTED, mIsPowerConnect = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {v5}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$200(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$200(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1, v4}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$202(Lcn/nubia/redmagickyi/care/manager/BatteryListener;Z)Z

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;->onStatePowerConnected()V

    .line 84
    :cond_7
    :goto_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 85
    const-string p1, "level"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 86
    const-string v0, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "battery level = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/BatteryListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/BatteryListener;->access$300(Lcn/nubia/redmagickyi/care/manager/BatteryListener;)Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/manager/BatteryListener$BatteryStateListener;->onStatePowerLevel(I)V

    :cond_8
    return-void
.end method
