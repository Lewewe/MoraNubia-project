.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;
.super Ljava/lang/Object;
.source "ImageViewerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBundle"
.end annotation


# instance fields
.field public draggableImageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public picIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;->draggableImageInfos:Ljava/util/ArrayList;

    .line 22
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;->picIndex:I

    return-void
.end method
