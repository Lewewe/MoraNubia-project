.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 75
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v2, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->clearProgress()V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onComplete()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->loop:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    if-nez p1, :cond_4

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->getProxyUrl()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v2, v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->getProxyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isFileUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isFileUri(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->access$000(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;Z)V

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prepare()V

    goto :goto_2

    .line 84
    :cond_3
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->start()Z

    :cond_4
    :goto_2
    return-void
.end method
