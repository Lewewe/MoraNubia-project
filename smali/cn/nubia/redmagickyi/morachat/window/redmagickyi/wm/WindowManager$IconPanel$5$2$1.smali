.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 509
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 2

    .line 512
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 513
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 515
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$2500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setModelReady(Z)V

    .line 516
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)V

    .line 517
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)V

    .line 520
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 521
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;->access$2400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$5;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
