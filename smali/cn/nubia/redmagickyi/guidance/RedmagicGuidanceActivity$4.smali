.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;
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

    .line 227
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 247
    const-string p1, "RedmagicGuidanceActivity"

    const-string v0, "portraitVideoView onCompletion:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    const-string v2, "fin"

    const-string v3, "oobe_video_mora"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object p1, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;->REDMAGIC_CALL_COMPLETED:Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager;->saveData(Lcn/nubia/redmagickyi/achievement/util/AchievementLocaleDataManager$Events;Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 256
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "portraitVideoView onError:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 237
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "portraitVideoView onInfo:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 230
    const-string p1, "RedmagicGuidanceActivity"

    const-string v0, "portraitVideoView onPrepared:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->unmute()V

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$4;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$300(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 242
    const-string p0, "RedmagicGuidanceActivity"

    const-string p1, "portraitVideoView onVideoSizeChanged:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
