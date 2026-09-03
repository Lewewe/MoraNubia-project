.class Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$1;
.super Ljava/lang/Object;
.source "WallPaperPetService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->initAudioCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$1;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "WallPaperUnityService onAudioPlayBegin:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallPaperPetService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    return-void
.end method

.method public onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 123
    const-string p0, "WallPaperPetService"

    const-string p1, "onAudioPlayPause"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 133
    const-string p0, "WallPaperPetService"

    const-string p1, "onAudioPlayResume"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 128
    const-string p0, "WallPaperPetService"

    const-string p1, "onAudioPlayStop"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
