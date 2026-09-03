.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
.super Ljava/lang/Object;
.source "SeedEditV3Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeedEditV3DataBuilder"
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

.field private logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

.field private prompt:Ljava/lang/String;

.field private returnUrl$set:Z

.field private returnUrl$value:Ljava/lang/Boolean;

.field private scale$set:Z

.field private scale$value:F

.field private seed$set:Z

.field private seed$value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryDataBase64(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->binaryDataBase64:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;
    .locals 9

    .line 13
    iget v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->seed$value:I

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->seed$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;->access$000()I

    move-result v0

    :cond_0
    move v5, v0

    iget v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->scale$value:F

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->scale$set:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;->access$100()F

    move-result v0

    :cond_1
    move v6, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->returnUrl$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->returnUrl$set:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;->access$200()Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    move-object v7, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->imageUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->binaryDataBase64:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->prompt:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;IFLjava/lang/Boolean;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V

    return-object v0
.end method

.method public imageUrls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->imageUrls:Ljava/util/List;

    return-object p0
.end method

.method public logoInfo(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-object p0
.end method

.method public prompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public returnUrl(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->returnUrl$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->returnUrl$set:Z

    return-object p0
.end method

.method public scale(F)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->scale$value:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->scale$set:Z

    return-object p0
.end method

.method public seed(I)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->seed$value:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->seed$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeedEditV3Data.SeedEditV3DataBuilder(imageUrls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binaryDataBase64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->binaryDataBase64:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->seed$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->scale$value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnUrl$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->returnUrl$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/SeedEditV3Data$SeedEditV3DataBuilder;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
