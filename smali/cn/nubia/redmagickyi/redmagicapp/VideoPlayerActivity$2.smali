.class Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 90
    const-string p1, "VideoPlayerActivity"

    const-string v0, "onPlayCompletion"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPlayError, what = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", extra = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method
