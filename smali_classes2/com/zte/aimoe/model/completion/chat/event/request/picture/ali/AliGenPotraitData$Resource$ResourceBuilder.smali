.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceBuilder"
.end annotation


# instance fields
.field private resourceId:Ljava/lang/String;

.field private resourceType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;
    .locals 2

    .line 64
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceType:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceId:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public resourceId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public resourceType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenPotraitData.Resource.ResourceBuilder(resourceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource$ResourceBuilder;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
