.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParametersBuilder"
.end annotation


# instance fields
.field private n$set:Z

.field private n$value:Ljava/lang/Integer;

.field private size$set:Z

.field private size$value:Ljava/lang/String;

.field private skin_retouch$set:Z

.field private skin_retouch$value:Ljava/lang/Boolean;

.field private style:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->n$value:Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->n$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->access$000()Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->skin_retouch$value:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->skin_retouch$set:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->access$100()Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->size$value:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->size$set:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->access$200()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->style:Ljava/lang/String;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public n(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->n$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->n$set:Z

    return-object p0
.end method

.method public size(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->size$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->size$set:Z

    return-object p0
.end method

.method public skin_retouch(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->skin_retouch$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->skin_retouch$set:Z

    return-object p0
.end method

.method public style(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->style:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenPotraitData.Parameters.ParametersBuilder(n$value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->n$value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skin_retouch$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->skin_retouch$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;->size$value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
