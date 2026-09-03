.class Lcn/nubia/redmagickyi/util/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/VideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$502(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$602(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$500(Lcn/nubia/redmagickyi/util/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$600(Lcn/nubia/redmagickyi/util/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->requestLayout()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "videosize ="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/VideoView;->access$500(Lcn/nubia/redmagickyi/util/VideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$3;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/VideoView;->access$600(Lcn/nubia/redmagickyi/util/VideoView;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "videoview"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
