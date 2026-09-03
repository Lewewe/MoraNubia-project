.class Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;
.super Lcom/zte/aivoice/AIVoiceManager$TTS;
.source "SpeechManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTSImpl"
.end annotation


# instance fields
.field private scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field private ttsId:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/zte/aivoice/AIVoiceManager$TTS;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->ttsId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->ttsId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->isUnityId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Lcom/zte/aivoice/tts/TTSClient;
    .locals 1

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v0

    return-object v0
.end method

.method private getTTSId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->isUnityId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isStopAudioPath(Ljava/lang/String;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 117
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 120
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->createTTSPathForUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->findPresetById(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getFilePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isUnityId(Ljava/lang/String;)Z
    .locals 1

    .line 136
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->findPresetById(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 138
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    if-ne p0, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 10

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->getTTSId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->ttsId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->words:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->ttsId:Ljava/lang/String;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p5

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Lcom/zte/aivoice/tts/OnTTSClientListener;Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;)V

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zte/aivoice/tts/TTSClient;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method
