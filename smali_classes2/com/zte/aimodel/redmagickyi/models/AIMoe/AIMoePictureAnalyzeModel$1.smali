.class Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;
.super Ljava/lang/Object;
.source "AIMoePictureAnalyzeModel.java"

# interfaces
.implements Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->request(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;

.field final synthetic val$callback:Lcom/zte/aimodel/IResponseCallback;

.field final synthetic val$chatCompletedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

.field final synthetic val$chatFailedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

.field final synthetic val$exception:[Ljava/lang/RuntimeException;

.field final synthetic val$latch:[Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;[Ljava/lang/RuntimeException;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;Lcom/zte/aimodel/IResponseCallback;[Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
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
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->this$0:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;

    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$exception:[Ljava/lang/RuntimeException;

    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$chatCompletedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

    iput-object p4, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$chatFailedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

    iput-object p5, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$callback:Lcom/zte/aimodel/IResponseCallback;

    iput-object p6, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$latch:[Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unlock()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$latch:[Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 192
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$latch:[Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    aput-object v0, p0, v1

    :cond_0
    return-void
.end method


# virtual methods
.method public onChatCompletedEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;)V
    .locals 3

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChatCompletedEvent===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$chatCompletedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 136
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->unlock()V

    return-void
.end method

.method public onChatCreateEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;)V
    .locals 2

    .line 140
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChatCreateEvent===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onChatFailedEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;)V
    .locals 3

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChatFailedEvent===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$chatFailedEvent:[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 146
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->unlock()V

    return-void
.end method

.method public onChatInProgressEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatInProgressEvent;)V
    .locals 2

    .line 150
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChatInProgressEvent===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatInProgressEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onChatMessageCompletedEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;)V
    .locals 2

    .line 154
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChatMessageCompletedEvent===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onChatMessageDeltaEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;)V
    .locals 3

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChatMessageDeltaEvent===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    iget-object v0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "answer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$callback:Lcom/zte/aimodel/IResponseCallback;

    iget-object p1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContent()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$exception:[Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 121
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->unlock()V

    return-void
.end method

.method public onErrorEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;)V
    .locals 3

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorEvent===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->val$exception:[Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 160
    invoke-direct {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;->unlock()V

    return-void
.end method

.method public onPictureResponseEvent(Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;)V
    .locals 0

    .line 186
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onProfileResponseEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;)V
    .locals 1

    .line 126
    iget-object p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;->getFlowList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    iget-object p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;->getFlowList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResposeFlow;

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResposeFlow;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPromptResponseEvent(Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent;)V
    .locals 0

    .line 180
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
