.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData$AliTrainingQueryDataBuilder;
.super Ljava/lang/Object;
.source "AliTrainingQueryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliTrainingQueryDataBuilder"
.end annotation


# instance fields
.field private jobId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData;
    .locals 1

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData$AliTrainingQueryDataBuilder;->jobId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public jobId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData$AliTrainingQueryDataBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData$AliTrainingQueryDataBuilder;->jobId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliTrainingQueryData.AliTrainingQueryDataBuilder(jobId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingQueryData$AliTrainingQueryDataBuilder;->jobId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
