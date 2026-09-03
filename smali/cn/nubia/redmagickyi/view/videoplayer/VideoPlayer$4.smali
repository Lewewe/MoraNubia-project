.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 101
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onInfo what:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  extra:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "VideoPlayer"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 106
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onRenderingStart()V

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->saveProgress()V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_3

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onBuffering()V

    .line 115
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->access$200(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_4

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
