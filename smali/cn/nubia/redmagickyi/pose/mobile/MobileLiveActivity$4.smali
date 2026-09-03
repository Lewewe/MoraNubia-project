.class Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;
.super Landroid/os/Handler;
.source "MobileLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->scheduleCheckMobileLiveProcessRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;Landroid/os/Looper;)V
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

    .line 230
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 p1, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->access$300(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "MobileLiveActivity"

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "service running, wait"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1f4

    .line 237
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 239
    :cond_0
    const-string p1, "start live service"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    const-class v1, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->finish()V

    :goto_0
    return-void
.end method
