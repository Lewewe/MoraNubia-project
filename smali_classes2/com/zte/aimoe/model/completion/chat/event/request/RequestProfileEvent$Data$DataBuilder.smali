.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "RequestProfileEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private createdAt$set:Z

.field private createdAt$value:J

.field private flowIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireProfile:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;
    .locals 4

    .line 30
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->createdAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->createdAt$set:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->access$000()J

    move-result-wide v0

    :cond_0
    new-instance v2, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->flowIds:Ljava/util/List;

    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->requireProfile:Z

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;-><init>(JLjava/util/List;Z)V

    return-object v2
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->createdAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->createdAt$set:Z

    return-object p0
.end method

.method public flowIds(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->flowIds:Ljava/util/List;

    return-object p0
.end method

.method public requireProfile(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->requireProfile:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestProfileEvent.Data.DataBuilder(createdAt$value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->createdAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->flowIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;->requireProfile:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
