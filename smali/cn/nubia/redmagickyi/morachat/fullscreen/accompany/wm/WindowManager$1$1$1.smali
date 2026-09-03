.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 3

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)V

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->getUnityView()Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->fadeOut(Landroid/view/View;J)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
