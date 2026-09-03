.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;
.super Ljava/lang/Object;
.source "MobileLiveService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 952
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    .line 955
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Display #"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " added."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileLiveService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " changed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileLiveService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 964
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 966
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->onChanged()V

    .line 967
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isScreenOriatationChanged(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 968
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideMenu()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 974
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Display #"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileLiveService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
