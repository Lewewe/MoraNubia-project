.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$2;
.super Ljava/lang/Object;
.source "DraggableImageView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ExitAnimatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartInitAnimatorParams()V
    .locals 1

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;)Lcn/nubia/redmagickyi/view/photoview/PhotoView;

    move-result-object p0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
