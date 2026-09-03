.class Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/SeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$000(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 443
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/VideoItem;->release()V

    .line 445
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$102(Lcn/nubia/redmagickyi/crop/view/SeekBarView;Lcn/nubia/mediaeditor/editor/VideoItem;)Lcn/nubia/mediaeditor/editor/VideoItem;

    :cond_0
    return-void

    .line 415
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 416
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    new-instance v2, Lcn/nubia/mediaeditor/editor/VideoItem;

    invoke-direct {v2}, Lcn/nubia/mediaeditor/editor/VideoItem;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$102(Lcn/nubia/redmagickyi/crop/view/SeekBarView;Lcn/nubia/mediaeditor/editor/VideoItem;)Lcn/nubia/mediaeditor/editor/VideoItem;

    .line 418
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$000(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/editor/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 419
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/VideoItem;->getWidth()I

    move-result v1

    .line 420
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/mediaeditor/editor/VideoItem;->getHeight()I

    move-result v2

    .line 421
    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailWidth:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget v4, v4, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->mThumbnailHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 422
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v5, v1

    mul-float/2addr v2, v3

    float-to-int v6, v2

    .line 426
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v4

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/VideoItem;->getDuration()I

    move-result v1

    int-to-long v9, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$200(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)I

    move-result v11

    new-instance v12, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;

    invoke-direct {v12, p0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3$1;-><init>(Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;)V

    const-wide/16 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lcn/nubia/mediaeditor/editor/VideoItem;->getThumbnailList(IIJJILcn/nubia/mediaeditor/editor/VideoItem$GetThumbnailListCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 441
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 444
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/VideoItem;->release()V

    .line 445
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$102(Lcn/nubia/redmagickyi/crop/view/SeekBarView;Lcn/nubia/mediaeditor/editor/VideoItem;)Lcn/nubia/mediaeditor/editor/VideoItem;

    :cond_4
    return-void

    .line 443
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 444
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$100(Lcn/nubia/redmagickyi/crop/view/SeekBarView;)Lcn/nubia/mediaeditor/editor/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/mediaeditor/editor/VideoItem;->release()V

    .line 445
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SeekBarView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->access$102(Lcn/nubia/redmagickyi/crop/view/SeekBarView;Lcn/nubia/mediaeditor/editor/VideoItem;)Lcn/nubia/mediaeditor/editor/VideoItem;

    .line 447
    :cond_5
    throw v1
.end method
