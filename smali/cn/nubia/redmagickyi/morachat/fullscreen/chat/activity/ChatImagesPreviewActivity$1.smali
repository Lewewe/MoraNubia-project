.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;
.super Ljava/lang/Object;
.source "ChatImagesPreviewActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getGalleryViewer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeViewer()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->finish()V

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method
