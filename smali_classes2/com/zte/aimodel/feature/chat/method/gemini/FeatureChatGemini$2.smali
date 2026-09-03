.class synthetic Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$2;
.super Ljava/lang/Object;
.source "FeatureChatGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 194
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->values()[Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Japan:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Korean:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
