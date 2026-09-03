.class synthetic Lcom/zte/aivoice/tts/TTSClient$1;
.super Ljava/lang/Object;
.source "TTSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/TTSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

.field static final synthetic $SwitchMap$com$zte$aivoice$tts$TTSSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->values()[Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Japan:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    sget-object v3, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    sget-object v3, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Korean:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 33
    :catch_2
    invoke-static {}, Lcom/zte/aivoice/tts/TTSSource;->values()[Lcom/zte/aivoice/tts/TTSSource;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    :try_start_3
    sget-object v3, Lcom/zte/aivoice/tts/TTSSource;->Bytedance:Lcom/zte/aivoice/tts/TTSSource;

    invoke-virtual {v3}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    sget-object v2, Lcom/zte/aivoice/tts/TTSSource;->Google:Lcom/zte/aivoice/tts/TTSSource;

    invoke-virtual {v2}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
