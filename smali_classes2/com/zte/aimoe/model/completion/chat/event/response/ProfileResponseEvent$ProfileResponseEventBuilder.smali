.class public Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;
.super Ljava/lang/Object;
.source "ProfileResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileResponseEventBuilder"
.end annotation


# instance fields
.field private data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;
    .locals 1

    .line 15
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent;-><init>(Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;)V

    return-object v0
.end method

.method public data(Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProfileResponseEvent.ProfileResponseEventBuilder(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$ProfileResponseEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
