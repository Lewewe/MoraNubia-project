.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
.super Ljava/lang/Object;
.source "RequestRecordSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private logid:Ljava/lang/String;

.field private page:Ljava/lang/Integer;

.field private size:Ljava/lang/Integer;

.field private startTime:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;
    .locals 8

    .line 21
    new-instance v7, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->logid:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->startTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->endTime:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->page:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->size:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->accountId:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v7
.end method

.method public endTime(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public logid(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public page(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->page:Ljava/lang/Integer;

    return-object p0
.end method

.method public size(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->size:Ljava/lang/Integer;

    return-object p0
.end method

.method public startTime(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->startTime:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestRecordSearch.Data.DataBuilder(logid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->logid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->page:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestRecordSearch$Data$DataBuilder;->accountId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
