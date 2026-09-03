.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;
.super Ljava/lang/Object;
.source "ChatCompletionContentPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
    }
.end annotation


# instance fields
.field content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->text:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
    .locals 1

    .line 17
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getImageUrl()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getImageUrl()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    move-result-object p1

    if-nez p0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrl()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getContent()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getText()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->getImageUrl()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->content:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
