.class Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/VideoItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;->this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 430
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;->this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;->this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailHeight:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/crop/util/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;->this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$300(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x4

    .line 435
    iput p2, p1, Landroid/os/Message;->what:I

    .line 436
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;->this$1:Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$400(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
