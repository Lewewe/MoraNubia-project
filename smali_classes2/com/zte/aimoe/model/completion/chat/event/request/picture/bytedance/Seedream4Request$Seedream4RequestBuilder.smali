.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
.super Ljava/lang/Object;
.source "Seedream4Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seedream4RequestBuilder"
.end annotation


# instance fields
.field private image:Ljava/lang/Object;

.field private model:Ljava/lang/String;

.field private prompt:Ljava/lang/String;

.field private response_format$set:Z

.field private response_format$value:Ljava/lang/String;

.field private sequential_image_generation$set:Z

.field private sequential_image_generation$value:Ljava/lang/String;

.field private sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

.field private size$set:Z

.field private size$value:Ljava/lang/String;

.field private stream$set:Z

.field private stream$value:Ljava/lang/Boolean;

.field private watermark$set:Z

.field private watermark$value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;
    .locals 11

    .line 12
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->size$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->size$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->access$100()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation$set:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->access$200()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->stream$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->stream$set:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->access$300()Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    move-object v8, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->response_format$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->response_format$set:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->access$400()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v9, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->watermark$value:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->watermark$set:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->access$500()Ljava/lang/Boolean;

    move-result-object v0

    :cond_4
    move-object v10, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->model:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->prompt:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->image:Ljava/lang/Object;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public image(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->image:Ljava/lang/Object;

    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public prompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public response_format(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->response_format$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->response_format$set:Z

    return-object p0
.end method

.method public sequential_image_generation(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation$set:Z

    return-object p0
.end method

.method public sequential_image_generation_options(Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    return-object p0
.end method

.method public size(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->size$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->size$set:Z

    return-object p0
.end method

.method public stream(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->stream$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->stream$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seedream4Request.Seedream4RequestBuilder(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->image:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->size$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequential_image_generation$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequential_image_generation_options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->stream$value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response_format$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->response_format$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watermark$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->watermark$value:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public watermark(Ljava/lang/Boolean;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->watermark$value:Ljava/lang/Boolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;->watermark$set:Z

    return-object p0
.end method
