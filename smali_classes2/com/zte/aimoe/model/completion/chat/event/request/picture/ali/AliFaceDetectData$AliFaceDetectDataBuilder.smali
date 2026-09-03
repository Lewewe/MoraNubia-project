.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;
.super Ljava/lang/Object;
.source "AliFaceDetectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliFaceDetectDataBuilder"
.end annotation


# instance fields
.field private images:Ljava/util/List;
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData;
    .locals 1

    .line 10
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;->images:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public images(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;->images:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliFaceDetectData.AliFaceDetectDataBuilder(images="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliFaceDetectData$AliFaceDetectDataBuilder;->images:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
