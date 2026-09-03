.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;
.super Landroid/os/Handler;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->queryUnityNotBlack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;Landroid/os/Looper;)V
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

    .line 759
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 763
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$3900(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    .line 778
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object v2

    .line 763
    invoke-static {p1, v0, v1, v2}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 781
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7$2;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;->access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$7;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void
.end method
