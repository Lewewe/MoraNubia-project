.class Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;
.super Lcom/zte/aimodel/IResponseCallback$Stub;
.source "FeatureChatBytedance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstLine:Z

.field final synthetic this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

.field final synthetic val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

.field final synthetic val$flowOutput:Z


# direct methods
.method constructor <init>(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;ZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    iput-boolean p2, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$flowOutput:Z

    iput-object p3, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/IResponseCallback$Stub;-><init>()V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->isFirstLine:Z

    return-void
.end method

.method private getEmoCode()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->access$100(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;

    invoke-static {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->access$100(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->access$100(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;

    iget-object v2, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-direct {v1, v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;-><init>(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->this$0:Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-static {v0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;->access$000(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;

    invoke-static {v0, p1, p2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;->access$200(Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$EmoCodeGetter;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_4

    .line 58
    iget-boolean v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->isFirstLine:Z

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "^\\s+"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    iput-boolean v1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->isFirstLine:Z

    :cond_1
    if-eqz p2, :cond_2

    .line 65
    const-string v0, "\\s+$"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_2
    const-string v0, "* **"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v0, "** *"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    const-string v0, "**"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "###"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "\\~"

    const-string v3, "~"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v0, " {\u56de\u590d"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 76
    const-string v0, "{\u56de\u590d"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v0, "\u56de\u590d} "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string v0, "\u56de\u590d}"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u56de\u590d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 82
    :cond_3
    const-string v0, " {"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string v0, "{"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string v0, "} "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string v0, "}"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$flowOutput:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_8

    add-int/lit8 v4, v0, 0x1

    .line 90
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v0, v6, :cond_5

    if-eqz p2, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result v5

    invoke-interface {v0, p1, v5, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    .line 95
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result v5

    invoke-interface {v0, v2, v5, v3}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_2

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result v6

    invoke-interface {v0, v5, v6, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    return v3

    :cond_7
    const-wide/16 v5, 0x1e

    .line 102
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    move v0, v4

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    if-eqz p2, :cond_a

    .line 108
    iget-object p2, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result v0

    invoke-interface {p2, p1, v0, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    .line 109
    iget-object p1, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result p0

    invoke-interface {p1, v2, p0, v3}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 111
    :cond_a
    iget-object p2, p0, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->val$callback:Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance$1;->getEmoCode()I

    move-result p0

    invoke-interface {p2, p1, p0, v1}, Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;->onSuccess(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method
