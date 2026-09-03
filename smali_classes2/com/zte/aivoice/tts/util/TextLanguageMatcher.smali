.class public Lcom/zte/aivoice/tts/util/TextLanguageMatcher;
.super Ljava/lang/Object;
.source "TextLanguageMatcher.java"


# static fields
.field private static final CHINESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENGLISH_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAPANESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final KOREAN_CHAR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "[A-Za-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->ENGLISH_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    const-string v0, "[\u4e00-\u9fa5\uf900-\ufa2d]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->CHINESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "[\u3040-\u309f\u30a0-\u30ff\uff66-\uff9f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->JAPANESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "[\uac00-\ud7af\u1100-\u11ff\u3130-\u318f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->KOREAN_CHAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsChinese(Ljava/lang/String;)Z
    .locals 1

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->CHINESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static containsEnglish(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->ENGLISH_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static containsJapanese(Ljava/lang/String;)Z
    .locals 1

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->JAPANESE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static containsKorean(Ljava/lang/String;)Z
    .locals 1

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->KOREAN_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static findBestMatcherLanguage(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    .locals 1

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    invoke-static {p0}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->containsJapanese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object p0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Japan:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    return-object p0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->containsChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object p0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    return-object p0

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->containsKorean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 36
    sget-object p0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Korean:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
