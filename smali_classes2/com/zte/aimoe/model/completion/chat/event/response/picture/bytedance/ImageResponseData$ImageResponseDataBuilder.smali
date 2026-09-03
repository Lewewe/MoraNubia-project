.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
.super Ljava/lang/Object;
.source "ImageResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageResponseDataBuilder"
.end annotation


# instance fields
.field private binaryDataBase64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private returnUrl:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryDataBase64(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;
    .locals 3

    .line 11
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->returnUrl:Z

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->imageUrls:Ljava/util/List;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public imageUrls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public returnUrl(Z)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->returnUrl:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageResponseData.ImageResponseDataBuilder(returnUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->returnUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryDataBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData$ImageResponseDataBuilder;->binaryDataBase64:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
