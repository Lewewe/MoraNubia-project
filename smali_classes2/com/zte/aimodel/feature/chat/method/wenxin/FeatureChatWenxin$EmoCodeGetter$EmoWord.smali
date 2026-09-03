.class Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;
.super Ljava/lang/Object;
.source "FeatureChatWenxin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmoWord"
.end annotation


# instance fields
.field private append:Ljava/lang/String;

.field private begin:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private filterAfter:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field final synthetic this$1:Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;


# direct methods
.method public constructor <init>(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->this$1:Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->begin:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->mid:Ljava/lang/String;

    .line 279
    iput-object p4, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->end:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->append:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->append:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->filterAfter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->filterAfter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->begin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->end:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin$EmoCodeGetter$EmoWord;->mid:Ljava/lang/String;

    return-object p0
.end method
