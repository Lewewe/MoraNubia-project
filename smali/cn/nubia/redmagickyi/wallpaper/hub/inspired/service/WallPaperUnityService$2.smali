.class Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;
.super Ljava/lang/Object;
.source "WallPaperUnityService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->initAudioCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WallPaperUnityService onAudioPlayBegin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallPaperUnityService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string p0, "!getDatabasePath(DATABASE_NAME).exists() onAudioPlayBegin:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsMuteStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 225
    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {v2, v2}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    .line 230
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getOpenBubble()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    new-instance v1, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object v0, v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->setRedmagicCareCallback(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;)V

    .line 240
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result p1

    .line 241
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    .line 242
    iput v1, v0, Landroid/os/Message;->what:I

    .line 243
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 232
    :cond_4
    const-string p0, "not open bubble chat:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$702(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z

    .line 267
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 249
    const-string p1, "WallPaperUnityService"

    const-string v0, "onAudioPlayPause"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 261
    const-string p0, "WallPaperUnityService"

    const-string p1, "onAudioPlayResume"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 255
    const-string p1, "WallPaperUnityService"

    const-string v0, "onAudioPlayStop"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
