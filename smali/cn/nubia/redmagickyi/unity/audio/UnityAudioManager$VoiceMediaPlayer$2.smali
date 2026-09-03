.class Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;
.super Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;
.source "UnityAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 429
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 0

    .line 439
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method public isEnableToPlay(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z
    .locals 4

    .line 364
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    .line 365
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_8

    .line 367
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 368
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p0

    .line 370
    sget-object v2, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const-string v2, "/Audio/Neo2DSportGirls/US/"

    packed-switch p0, :pswitch_data_0

    .line 408
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    .line 398
    :pswitch_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "/Audio/Neo2DSportGirls/JP/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 401
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    return v1

    :cond_1
    return v0

    .line 389
    :pswitch_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "/Audio/Neo2DSportGirls/ES/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 391
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 392
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    return v1

    :cond_3
    return v0

    .line 379
    :pswitch_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "/Audio/Neo2DSportGirls/ZH/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    .line 381
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 382
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    return v1

    :cond_5
    :pswitch_3
    return v0

    :cond_6
    if-eqz p1, :cond_8

    .line 417
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 418
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "/Audio/Mora2DDefault/US/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "/Audio/Mora2DUniform/US/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/Audio/Mora2DUniform/JP/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    return v1

    :cond_8
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;->this$1:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->access$500(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;)Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->access$402(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method
