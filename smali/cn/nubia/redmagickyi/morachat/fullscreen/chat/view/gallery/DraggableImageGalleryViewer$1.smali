.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;
.super Ljava/lang/Object;
.source "DraggableImageGalleryViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    return-void
.end method
