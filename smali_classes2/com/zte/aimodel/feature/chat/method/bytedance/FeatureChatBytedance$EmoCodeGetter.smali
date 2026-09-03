.class Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;
.super Ljava/lang/Object;
.source "FeatureChatBytedance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmoCodeGetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;
    }
.end annotation


# instance fields
.field private emoCode:Ljava/lang/Integer;

.field private emoWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;


# direct methods
.method public constructor <init>(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoWords:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;

    const-string v1, ":{"

    const-string v2, "}}"

    const-string v3, "emo"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;-><init>(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoWords:Ljava/util/List;

    new-instance v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;

    const-string v1, ":"

    const-string v2, "}"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;-><init>(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;)Ljava/lang/Integer;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoCode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->filterEmoResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private filterEmoResult(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object p1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$300(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->findEmoResult(Ljava/lang/String;ZLcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 193
    aget-object v5, v4, v5

    invoke-static {v2, v5}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$302(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$402(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;

    if-nez v1, :cond_1

    .line 196
    invoke-static {v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$400(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoWords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$300(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private findEmoResult(Ljava/lang/String;ZLcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)[Ljava/lang/String;
    .locals 6

    .line 208
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$500(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 209
    const-string v2, ""

    if-ltz v0, :cond_2

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$500(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$600(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$600(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$700(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 225
    :try_start_0
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$700(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v3, p3

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoCode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    move-object v2, p0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :catch_0
    :cond_3
    :goto_0
    const/4 p0, 0x2

    .line 249
    new-array p0, p0, [Ljava/lang/String;

    aput-object v2, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoCode:Ljava/lang/Integer;

    .line 174
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->emoWords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;

    .line 175
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$302(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    invoke-static {v0, v1}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;->access$402(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter$EmoWord;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method
