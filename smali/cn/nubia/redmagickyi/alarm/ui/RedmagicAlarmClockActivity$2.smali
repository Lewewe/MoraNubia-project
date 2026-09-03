.class Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;
.super Ljava/lang/Object;
.source "RedmagicAlarmClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->initVoiceTextGravity()V
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

    .line 598
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 602
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/widget/TextView;

    move-result-object p0

    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$2;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;->access$300(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method
