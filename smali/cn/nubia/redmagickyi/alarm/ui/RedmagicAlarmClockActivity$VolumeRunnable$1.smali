.class Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;
.super Ljava/lang/Object;
.source "RedmagicAlarmClockActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 854
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCounterValueChanged(FZ)V
    .locals 1

    .line 857
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    iget-object p2, p2, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 858
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->access$500(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 859
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->access$500(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->access$602(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;F)F

    .line 864
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->access$600(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;)F

    move-result p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable$1;->this$1:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;->access$600(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeRunnable;)F

    move-result p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->adjustVolume(FF)V

    return-void
.end method
