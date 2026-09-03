.class public final synthetic Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;


# direct methods
.method public synthetic constructor <init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;

    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;

    invoke-interface {p0, p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;->onChatCreateEvent(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;)V

    return-void
.end method
