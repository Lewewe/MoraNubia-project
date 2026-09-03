.class public Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private code:I

.field private detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

.field private msg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;
    .locals 3

    .line 25
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->msg:Ljava/lang/String;

    iget v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->code:I

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data;-><init>(Ljava/lang/String;ILcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;)V

    return-object v0
.end method

.method public code(I)Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
    .locals 0

    .line 25
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->code:I

    return-object p0
.end method

.method public detail(Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;)Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    return-object p0
.end method

.method public msg(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorEvent.Data.DataBuilder(msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Data$DataBuilder;->detail:Lcom/zte/aimoe/model/completion/chat/event/response/ErrorEvent$Detail;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
