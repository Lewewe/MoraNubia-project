.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;
.super Ljava/lang/Object;
.source "AliTrainingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliTrainingDataBuilder"
.end annotation


# instance fields
.field private trainingFileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;->trainingFileIds:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliTrainingData.AliTrainingDataBuilder(trainingFileIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;->trainingFileIds:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trainingFileIds(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;->trainingFileIds:Ljava/util/List;

    return-object p0
.end method
