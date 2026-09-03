.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;
.super Ljava/lang/Object;
.source "BaseDraggable.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->onScreenOrientationChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

.field final synthetic val$percentX:F

.field final synthetic val$percentY:F

.field final synthetic val$refreshDelayMillis:J

.field final synthetic val$viewHeight:I

.field final synthetic val$viewWidth:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;IFIFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$viewWidth:I

    iput p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$percentX:F

    iput p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$viewHeight:I

    iput p5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$percentY:F

    iput-wide p6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$refreshDelayMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onLayoutChange$0$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-BaseDraggable$1()V
    .locals 0

    .line 271
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->onScreenRotateInfluenceCoordinateChangeFinish()V

    return-void
.end method

.method synthetic lambda$onLayoutChange$1$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-BaseDraggable$1(IFIFLandroid/view/View;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshWindowInfo()V

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 268
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float p3, v0

    mul-float/2addr p3, p4

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 269
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateLocation(FFZ)V

    .line 271
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 263
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 264
    iget p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$viewWidth:I

    iget p5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$percentX:F

    iget p6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$viewHeight:I

    iget p7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$percentY:F

    new-instance p9, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1$$ExternalSyntheticLambda0;

    move-object p2, p9

    move-object p3, p0

    move-object p8, p1

    invoke-direct/range {p2 .. p8}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;IFIFLandroid/view/View;)V

    iget-wide p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;->val$refreshDelayMillis:J

    invoke-virtual {p1, p9, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
