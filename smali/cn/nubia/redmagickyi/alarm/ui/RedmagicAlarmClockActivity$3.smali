.class Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;
.super Ljava/lang/Object;
.source "RedmagicAlarmClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 681
    const-string v0, "RedmagicAlarmClockActivity"

    const-string v1, "time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->RepeatAlarm(Z)V

    .line 689
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$3;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->access$400(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V

    return-void
.end method
