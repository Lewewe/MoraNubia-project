.class public Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;
.super Landroid/os/Handler;
.source "RedmagicAlarmClockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity$VolumeHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
