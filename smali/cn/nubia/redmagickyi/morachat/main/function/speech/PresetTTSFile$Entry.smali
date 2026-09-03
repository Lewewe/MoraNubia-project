.class Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;
.super Ljava/lang/Object;
.source "PresetTTSFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# static fields
.field private static final path:Ljava/lang/String; = "/assets//chat/tts/%s/%s.mp3"


# instance fields
.field private fileName:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->words:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->fileName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->getWords()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 3

    .line 177
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->getTTSSource()Lcom/zte/aivoice/tts/TTSSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "/assets//chat/tts/%s/%s.mp3"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 183
    const-string p0, ""

    return-object p0

    .line 181
    :cond_0
    const-string v0, "google"

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->fileName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->trimFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_1
    const-string v0, "bytedance"

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->fileName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->trimFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWords()Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->words:Ljava/lang/String;

    return-object p0
.end method

.method private trimFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 188
    const-string p0, "//"

    const-string v0, "/"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
