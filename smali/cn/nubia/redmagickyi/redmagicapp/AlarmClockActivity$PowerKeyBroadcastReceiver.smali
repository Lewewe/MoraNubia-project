.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmClockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerKeyBroadcastReceiver"
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

    .line 515
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 520
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->access$700(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I

    move-result p1

    if-nez p1, :cond_0

    .line 521
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$800(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$PowerKeyBroadcastReceiver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
