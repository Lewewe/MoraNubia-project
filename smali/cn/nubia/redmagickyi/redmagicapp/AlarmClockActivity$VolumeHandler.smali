.class public Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeHandler;
.super Landroid/os/Handler;
.source "AlarmClockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 886
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$VolumeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
