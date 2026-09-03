.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;
.super Ljava/lang/Object;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->initGuidanceVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 295
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "landscapeVideoView onCompletion:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 300
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "landscapeVideoView onError:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 285
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "landscapeVideoView onInfo:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 278
    const-string p1, "RedmagicGuidanceActivity"

    const-string v0, "landscapeVideoView onPrepared:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$600(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->mute()V

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$5;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$300(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xfa0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 290
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "landscapeVideoView onVideoSizeChanged:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
