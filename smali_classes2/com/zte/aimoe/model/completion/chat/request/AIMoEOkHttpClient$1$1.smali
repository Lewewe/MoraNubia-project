.class Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;
.super Ljava/util/HashMap;
.source "AIMoEOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;


# direct methods
.method constructor <init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;)V
    .locals 4

    .line 173
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->this$1:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 174
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.chat.created"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatInProgressEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.chat.in_progress"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda3;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.message.delta"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda4;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.message.completed"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda5;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.chat.completed"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda6;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "conversation.chat.failed"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda7;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda8;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "profile.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda9;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "prompt.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.riskcontrol.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.detect.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.training.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.trainingquery.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.generate.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.generatequery.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.erase.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.expand.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.split.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.analyze.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.seededit.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.stylerepaint.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.genpotrait.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.emotionedit.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.hairedit.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.eyeclose2open.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string v1, "picture.seededitv3.response"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;

    const-class v1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;

    iget-object v2, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;->val$callback:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const-string p1, "picture.seedream4.response"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
