.class public Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ProfileResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private completedAt:J

.field private createdAt:J

.field private flowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResposeFlow;",
            ">;"
        }
    .end annotation
.end field

.field private logid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;
    .locals 8

    .line 24
    new-instance v7, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->logid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->createdAt:J

    iget-wide v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->completedAt:J

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->flowList:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    return-object v7
.end method

.method public completedAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->completedAt:J

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->createdAt:J

    return-object p0
.end method

.method public flowList(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ResposeFlow;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->flowList:Ljava/util/List;

    return-object p0
.end method

.method public logid(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProfileResponseEvent.Data.DataBuilder(logid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->logid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->completedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ProfileResponseEvent$Data$DataBuilder;->flowList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
