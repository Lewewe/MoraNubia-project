.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;
.super Ljava/lang/Object;
.source "ChatCompletionContentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatCompletionContentPartImageURLBuilder"
.end annotation


# instance fields
.field private detail:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
    .locals 2

    .line 40
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->detail:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public detail(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCompletionContentPart.ChatCompletionContentPartImageURL.ChatCompletionContentPartImageURLBuilder(url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->detail:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
