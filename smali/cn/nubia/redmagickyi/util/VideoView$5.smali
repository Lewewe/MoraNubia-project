.class Lcn/nubia/redmagickyi/util/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 196
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView$5;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 199
    const-string v0, "videoview"

    const-string v1, "play error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$5;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$302(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$5;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$5;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/VideoView;->access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;->onError(Landroid/media/MediaPlayer;II)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
