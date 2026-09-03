.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 2

    .line 766
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 767
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 769
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$2600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setModelReady(Z)V

    .line 770
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)V

    .line 771
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)V

    .line 774
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 775
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
