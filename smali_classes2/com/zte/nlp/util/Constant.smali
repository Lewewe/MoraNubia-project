.class public Lcom/zte/nlp/util/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ACCESS_KEY:Ljava/lang/String; = "6BU4SE44SD34TQVBGHA78934E02D0D6CA8911FE5E7A4B4F"

.field public static final APPID:Ljava/lang/String; = "REDMAGIC_GAME"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "v1.2.3.6"

.field public static final CONFIRM_SCENE:Ljava/lang/String; = "<llm_common_confirm>"

.field public static final COONFIRM_CONTENT:Ljava/lang/String; = "<confirm_content>"

.field private static final DOMAIN_URL_RELEASE:Ljava/lang/String; = "https://halo-v3.ztems.com"

.field private static final DOMAIN_URL_TEST:Ljava/lang/String; = "https://voice-newtest.ztems.com"

.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final GAMEAGENT_SCENE:Ljava/lang/String; = "<RedMagic_Game_New>"

.field public static final HISTORY:Ljava/lang/String; = "history"

.field public static final INTENT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final INTENT_POSITIVE:Ljava/lang/String; = "positive"

.field public static final KEY_DATA_TYPE:Ljava/lang/String; = "key_data_type"

.field public static final KEY_SCENE:Ljava/lang/String; = "key_scene"

.field public static final KEY_SOURCE_TEXT:Ljava/lang/String; = "key_source_text"

.field public static final KEY_USER_CONTENT:Ljava/lang/String; = "key_user_content"

.field public static final PHONE_TYPE_ANDROID:Ljava/lang/String; = "1"

.field public static final SECRET_KEY:Ljava/lang/String; = "ZTENLUVA"

.field public static final SEVER_URL:Ljava/lang/String;

.field public static final STATUS_DEFAULT:I = 0x3e8

.field public static final STATUS_HINT:I = 0x41a

.field public static final VALUES_DATATYPE_STT:Ljava/lang/String; = "stt"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/nlp/util/Constant;->getUrlDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zte/nlu/api/v1/ask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/nlp/util/Constant;->SEVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUrlDomain()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "https://halo-v3.ztems.com"

    return-object v0
.end method
