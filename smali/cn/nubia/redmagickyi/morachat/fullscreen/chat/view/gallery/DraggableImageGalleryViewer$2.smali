.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DraggableImageGalleryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->initAdapter()V
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

    .line 76
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    .line 90
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;Z)Z

    .line 94
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->showImageWithAnimator(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->showImage(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;)V

    .line 98
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "DraggableImageGalleryViewer_"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_download:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-boolean p1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->imageCanDown:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
