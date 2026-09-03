.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;
.super Ljava/lang/Object;
.source "DraggableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->onRetrieveImageWhRatio(ZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

.field final synthetic val$inMemCache:Z

.field final synthetic val$whRadio:F


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->val$whRadio:F

    iput-boolean p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->val$inMemCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$402(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;F)F

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->val$whRadio:F

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$502(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;Z)Z

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    move-result-object v3

    iget-object v4, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->draggableInfo:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/view/photoview/PhotoView;

    move-result-object v5

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->getWidth()I

    move-result v6

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->getHeight()I

    move-result v7

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ActionListener;

    move-result-object v8

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v3, v3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ExitAnimatorCallback;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;Landroid/view/View;IILcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ActionListener;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ExitAnimatorCallback;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$602(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->adjustScaleViewToCorrectLocation()V

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$7$1;->val$inMemCache:Z

    invoke-static {v0, v2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$900(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;ZZ)V

    return-void
.end method
