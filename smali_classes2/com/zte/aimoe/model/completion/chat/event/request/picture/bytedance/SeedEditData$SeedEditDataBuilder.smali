.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
.super Ljava/lang/Object;
.source "SeedEditData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeedEditDataBuilder"
.end annotation


# instance fields
.field private imageBase64:Ljava/util/List;
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

.field private logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

.field private prompt:Ljava/lang/String;

.field private returnUrl:Z

.field private scale:F

.field private seed:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData;
    .locals 9

    .line 13
    new-instance v8, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageBase64:Ljava/util/List;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->prompt:Ljava/lang/String;

    iget v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->seed:I

    iget v5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->scale:F

    iget-boolean v6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->returnUrl:Z

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;IFZLcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V

    return-object v8
.end method

.method public imageBase64(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageBase64:Ljava/util/List;

    return-object p0
.end method

.method public imageUrls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public logoInfo(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-object p0
.end method

.method public prompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public returnUrl(Z)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->returnUrl:Z

    return-object p0
.end method

.method public scale(F)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->scale:F

    return-object p0
.end method

.method public seed(I)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->seed:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeedEditData.SeedEditDataBuilder(imageBase64="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageBase64:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->returnUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditData$SeedEditDataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
