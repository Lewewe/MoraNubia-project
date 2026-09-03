.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;
.super Ljava/lang/Object;
.source "AliGenerateQueryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliGenerateQueryDataBuilder"
.end annotation


# instance fields
.field private taskId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;
    .locals 1

    .line 8
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public taskId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenerateQueryData.AliGenerateQueryDataBuilder(taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenerateQueryData$AliGenerateQueryDataBuilder;->taskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
