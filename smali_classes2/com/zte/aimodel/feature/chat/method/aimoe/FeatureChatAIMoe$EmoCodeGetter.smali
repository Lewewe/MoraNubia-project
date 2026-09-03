.class Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;
.super Ljava/lang/Object;
.source "FeatureChatAIMoe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmoCodeGetter"
.end annotation


# instance fields
.field private emoCode:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;


# direct methods
.method private constructor <init>(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;->this$0:Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;-><init>(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;)Ljava/lang/Integer;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;->emoCode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;->filterEmoResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private filterEmoResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->extractEmojis(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe$EmoCodeGetter;->emoCode:Ljava/lang/Integer;

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->removeEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
