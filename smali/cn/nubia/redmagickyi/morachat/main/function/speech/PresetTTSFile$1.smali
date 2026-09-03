.class synthetic Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;
.super Ljava/lang/Object;
.source "PresetTTSFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zte$aivoice$tts$TTSSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/zte/aivoice/tts/TTSSource;->values()[Lcom/zte/aivoice/tts/TTSSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    :try_start_0
    sget-object v1, Lcom/zte/aivoice/tts/TTSSource;->Bytedance:Lcom/zte/aivoice/tts/TTSSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    sget-object v1, Lcom/zte/aivoice/tts/TTSSource;->Google:Lcom/zte/aivoice/tts/TTSSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
