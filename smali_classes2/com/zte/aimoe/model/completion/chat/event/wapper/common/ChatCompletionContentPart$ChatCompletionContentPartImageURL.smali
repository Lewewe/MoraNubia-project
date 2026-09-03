.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;
.super Ljava/lang/Object;
.source "ChatCompletionContentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatCompletionContentPartImageURL"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;
    }
.end annotation


# instance fields
.field detail:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->detail:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;
    .locals 1

    .line 40
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL$ChatCompletionContentPartImageURLBuilder;-><init>()V

    return-object v0
.end method

.method public static encodeImageToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 52
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 53
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getDetail()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getDetail()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->getDetail()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->detail:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
