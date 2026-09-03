.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;
.super Ljava/lang/Object;
.source "AliTrainingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;
    }
.end annotation


# instance fields
.field private trainingFileIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "training_file_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->trainingFileIds:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData$AliTrainingDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->getTrainingFileIds()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->getTrainingFileIds()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getTrainingFileIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->trainingFileIds:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->getTrainingFileIds()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x3b

    add-int/2addr v0, p0

    return v0
.end method

.method public setTrainingFileIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliTrainingData;->trainingFileIds:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
