.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
.super Ljava/lang/Object;
.source "Seedream4Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SequentialImageGenerationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;
    }
.end annotation


# instance fields
.field private max_images:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_images"
    .end annotation
.end field


# direct methods
.method private static $default$max_images()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x3

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->$default$max_images()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->max_images:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->max_images:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .line 59
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->$default$max_images()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;
    .locals 1

    .line 55
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions$SequentialImageGenerationOptionsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 56
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->getMax_images()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->getMax_images()Ljava/lang/Integer;

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

.method public getMax_images()Ljava/lang/Integer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->max_images:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->getMax_images()Ljava/lang/Integer;

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

.method public setMax_images(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->max_images:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seedream4Request.SequentialImageGenerationOptions(max_images="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;->getMax_images()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
