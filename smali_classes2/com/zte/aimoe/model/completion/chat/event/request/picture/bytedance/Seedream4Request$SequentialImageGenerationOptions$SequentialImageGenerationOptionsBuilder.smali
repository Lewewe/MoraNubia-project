.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;
.super Ljava/lang/Object;
.source "Seedream4Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SequentialImageGenerationOptionsBuilder"
.end annotation


# instance fields
.field private max_images$set:Z

.field private max_images$value:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;->max_images$value:Ljava/lang/Integer;

    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;->max_images$set:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->access$000()Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    invoke-direct {p0, v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public max_images(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;->max_images$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;->max_images$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seedream4Request.SequentialImageGenerationOptions.SequentialImageGenerationOptionsBuilder(max_images$value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;->max_images$value:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
