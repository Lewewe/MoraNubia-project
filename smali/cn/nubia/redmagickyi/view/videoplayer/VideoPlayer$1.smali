.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPrepared, url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v1, v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isPrepareing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", prePause = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-object p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne p1, v0, :cond_1

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    if-nez p1, :cond_1

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->start()Z

    :cond_1
    return-void
.end method
