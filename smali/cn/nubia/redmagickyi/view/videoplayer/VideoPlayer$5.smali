.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 127
    iget-object p3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p3, p3, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setVideoSize(II)V

    :cond_0
    return-void
.end method
