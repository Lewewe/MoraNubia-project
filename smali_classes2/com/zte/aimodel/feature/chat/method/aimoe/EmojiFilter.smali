.class public Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;
.super Ljava/lang/Object;
.source "EmojiFilter.java"


# static fields
.field private static final AMUSED_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83e\udd23]"

.field private static final CALM_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude42]"

.field private static final EMOJI_ARR:[Ljava/lang/String;

.field private static final EMOJI_PATTERN:Ljava/lang/String; = "[\\p{So}\\p{Cf}\\p{Co}\\p{Cs}\\x{1F600}-\\x{1F64F}\\x{1F300}-\\x{1F5FF}\\x{1F680}-\\x{1F6FF}\\x{1F700}-\\x{1F77F}\\x{1F780}-\\x{1F7FF}\\x{1F800}-\\x{1F8FF}\\x{1F900}-\\x{1F9FF}\\x{1FA00}-\\x{1FA6F}\\x{1FA70}-\\x{1FAFF}\\x{2600}-\\x{26FF}\\x{2700}-\\x{27BF}\\x{FE0F}]+"

.field private static final EMOTION_CODE:[I

.field private static final EXPECTED_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83e\udd29]"

.field private static final EXTREMELY_ANGRY_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude21]"

.field private static final FLUSTERED_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude28]"

.field private static final HAPPY_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude04]"

.field private static final LOVE_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83e\udd70]"

.field private static final NO_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude10]"

.field private static final PUZZLED_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude15]"

.field private static final SAD_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude2d]"

.field private static final SCARED_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude31]"

.field private static final SLIGHTLY_ANGRY_EMOTION_PATTERN:Ljava/lang/String; = "[\ud83d\ude12]"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\ud83d\ude10"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\ud83d\ude31"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\ud83d\ude12"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\ud83d\ude21"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\ud83e\udd23"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\ud83d\ude04"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\ud83e\udd29"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\ud83e\udd70"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\ud83d\ude15"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\ud83d\ude2d"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\ud83d\ude28"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\ud83d\ude42"

    aput-object v3, v1, v2

    sput-object v1, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->EMOJI_ARR:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->EMOTION_CODE:[I

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x3e9
        0x3ea
        0x3eb
        0x3ec
        0x3ed
        0x3ee
        0x3ef
        0x3f0
        0x3f1
        0x3f2
        0x3f3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractEmojis(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_0
    sget-object v2, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->EMOJI_ARR:[Ljava/lang/String;

    .line 25
    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    .line 28
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    :goto_1
    sget-object v2, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->EMOJI_ARR:[Ljava/lang/String;

    .line 32
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 33
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\\u%04X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_1
    sget-object p0, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->EMOTION_CODE:[I

    aget p0, p0, v1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static removeEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    const-string v0, "[\\p{So}\\p{Cf}\\p{Co}\\p{Cs}\\x{1F600}-\\x{1F64F}\\x{1F300}-\\x{1F5FF}\\x{1F680}-\\x{1F6FF}\\x{1F700}-\\x{1F77F}\\x{1F780}-\\x{1F7FF}\\x{1F800}-\\x{1F8FF}\\x{1F900}-\\x{1F9FF}\\x{1FA00}-\\x{1FA6F}\\x{1FA70}-\\x{1FAFF}\\x{2600}-\\x{26FF}\\x{2700}-\\x{27BF}\\x{FE0F}]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
