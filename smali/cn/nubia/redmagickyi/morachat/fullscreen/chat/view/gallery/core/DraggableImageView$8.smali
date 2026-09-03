.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;
.super Ljava/lang/Object;
.source "DraggableImageView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$EnterAnimatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->loadAvailableImage(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

.field final synthetic val$finalTargetUrl:Ljava/lang/String;

.field final synthetic val$originImgInCache:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;Ljava/lang/String;Z)V
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

    .line 250
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->val$finalTargetUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->val$originImgInCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterAnimatorEnd()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/view/photoview/PhotoView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->adjustViewToMatchParent()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->val$finalTargetUrl:Ljava/lang/String;

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->val$originImgInCache:Z

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onEnterAnimatorStart()V
    .locals 1

    .line 253
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$8;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/view/photoview/PhotoView;

    move-result-object p0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
