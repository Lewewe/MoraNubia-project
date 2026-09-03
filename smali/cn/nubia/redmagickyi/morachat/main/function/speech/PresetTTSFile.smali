.class public final enum Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
.super Ljava/lang/Enum;
.source "PresetTTSFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

.field public static final enum UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;


# instance fields
.field private emoCode:I

.field private en:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

.field private id:Ljava/lang/String;

.field private zh_rCN:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
    .locals 7

    .line 17
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v5, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v6, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    filled-new-array/range {v0 .. v6}, [Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v7, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    .line 22
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getEmoCode()I

    move-result v4

    new-instance v5, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    const-string v0, "UnityAudio_"

    const/4 v8, 0x0

    invoke-direct {v5, v0, v8, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const/4 v6, 0x0

    const-string v1, "UNITY"

    const/4 v2, 0x0

    const-string v3, "UNITY_"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v7, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 29
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v13

    new-instance v14, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_hello_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/hello"

    invoke-direct {v14, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v15, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_hello_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/hello"

    invoke-direct {v15, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v10, "HELLO"

    const/4 v11, 0x1

    const-string v12, "HELLO_"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 34
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 36
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v5

    new-instance v6, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_hello_menu_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/hello_menu"

    invoke-direct {v6, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v7, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_hello_menu_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/hello_menu"

    invoke-direct {v7, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v2, "HELLO_MENU"

    const/4 v3, 0x2

    const-string v4, "HELLO_MENU_"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 43
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v13

    new-instance v14, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_goodbye_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/goodbye"

    invoke-direct {v14, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v15, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_goodbye_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/goodbye"

    invoke-direct {v15, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v10, "GOODBYE"

    const/4 v11, 0x3

    const-string v12, "GOODBYE_"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_GOODBYE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 50
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v5

    new-instance v6, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_goodbye_nowakeup_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/goodbye_nowakeup"

    invoke-direct {v6, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v7, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_goodbye_nowakeup_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/goodbye_nowakeup"

    invoke-direct {v7, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v2, "GOODBYE_NOWAKEUP"

    const/4 v3, 0x4

    const-string v4, "GOODBYE_NOWAKEUP_"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 55
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_ERROR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 57
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v13

    new-instance v14, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_network_err_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/err_network"

    invoke-direct {v14, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v15, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_network_err_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/err_network"

    invoke-direct {v15, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v10, "ERR_NETWORK"

    const/4 v11, 0x5

    const-string v12, "ERR_NETWORK_"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_ERROR:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    .line 64
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v5

    new-instance v6, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_remote_err_zh_rCN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh-rCN/err_remote"

    invoke-direct {v6, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    new-instance v7, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_say_remote_err_en:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en/err_remote"

    invoke-direct {v7, v1, v2, v8}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$1;)V

    const-string v2, "ERR_REMOTE"

    const/4 v3, 0x6

    const-string v4, "ERR_REMOTE_"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;-><init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    .line 17
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->$values()[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;",
            "Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->id:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->emoCode:I

    .line 77
    invoke-direct {p0, p5}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->checkEntryValid(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->zh_rCN:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    .line 78
    invoke-direct {p0, p6}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->checkEntryValid(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->en:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    return-void
.end method

.method private checkEntryValid(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;
    .locals 2

    .line 121
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    .line 130
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 139
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-object p1

    :catchall_0
    move-exception p0

    .line 143
    throw p0

    :catch_1
    return-object p0
.end method

.method public static findPresetById(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 150
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->values()[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 151
    sget-object v5, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    iget-object v5, v5, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    .line 154
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;
    .locals 1

    .line 17
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    return-object v0
.end method


# virtual methods
.method public getCurrent()Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;
    .locals 2

    .line 99
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->zh_rCN:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->en:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->zh_rCN:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    :goto_0
    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->zh_rCN:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->en:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    :cond_2
    return-object v0
.end method

.method public getEmoCode()I
    .locals 0

    .line 86
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->emoCode:I

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getCurrent()Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWords()Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getCurrent()Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
