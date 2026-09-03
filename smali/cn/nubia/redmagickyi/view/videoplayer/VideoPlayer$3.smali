.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$3;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/16 v0, -0x3ec

    if-eq p3, v0, :cond_0

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$3;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
