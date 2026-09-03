.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;
.super Ljava/lang/Object;
.source "ChatFailedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastErrorBuilder"
.end annotation


# instance fields
.field private code:I

.field private extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private logId:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;
    .locals 4

    .line 89
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->code:I

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->logId:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->extraInfo:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public code(I)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;
    .locals 0

    .line 89
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->code:I

    return-object p0
.end method

.method public extraInfo(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->extraInfo:Ljava/util/Map;

    return-object p0
.end method

.method public logId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->logId:Ljava/lang/String;

    return-object p0
.end method

.method public msg(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatFailedEvent.LastError.LastErrorBuilder(code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->logId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError$LastErrorBuilder;->extraInfo:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
