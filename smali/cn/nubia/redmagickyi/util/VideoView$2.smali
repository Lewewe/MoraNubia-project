.class Lcn/nubia/redmagickyi/util/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$currentPosition:I

.field final synthetic val$finalPerformPause:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/VideoView;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->val$currentPosition:I

    iput-boolean p3, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->val$finalPerformPause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 149
    const-string v0, "videoview"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$200(Lcn/nubia/redmagickyi/util/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$102(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$200(Lcn/nubia/redmagickyi/util/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    iget v1, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->val$currentPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->seekToPosition(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$302(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$400(Lcn/nubia/redmagickyi/util/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setForgroundWhenPlayComplete(Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 160
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->val$finalPerformPause:Z

    if-eqz p1, :cond_2

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$2;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->pause()V

    :cond_2
    return-void
.end method
