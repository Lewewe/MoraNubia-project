.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;,
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;,
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;
    }
.end annotation


# instance fields
.field private input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "input"
    .end annotation
.end field

.field private parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parameters"
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resources"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
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

.method public constructor <init>(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->resources:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$AliGenPotraitDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getInput()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getInput()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getParameters()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getParameters()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getResources()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getResources()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getInput()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    return-object p0
.end method

.method public getParameters()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    return-object p0
.end method

.method public getResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->resources:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getInput()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getParameters()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->getResources()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setInput(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->input:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    return-void
.end method

.method public setParameters(Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->parameters:Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Resource;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;->resources:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
