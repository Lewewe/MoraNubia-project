.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;
.super Ljava/lang/Object;
.source "Seedream4Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
    }
.end annotation


# instance fields
.field private image:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt"
    .end annotation
.end field

.field private response_format:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_format"
    .end annotation
.end field

.field private sequential_image_generation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sequential_image_generation"
    .end annotation
.end field

.field private sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sequential_image_generation_options"
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private stream:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
    .end annotation
.end field

.field private watermark:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watermark"
    .end annotation
.end field


# direct methods
.method private static $default$response_format()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "url"

    return-object v0
.end method

.method private static $default$sequential_image_generation()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "disabled"

    return-object v0
.end method

.method private static $default$size()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "1024x1024"

    return-object v0
.end method

.method private static $default$stream()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static $default$watermark()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$size()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->size:Ljava/lang/String;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$sequential_image_generation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation:Ljava/lang/String;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$stream()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->stream:Ljava/lang/Boolean;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$response_format()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->response_format:Ljava/lang/String;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$watermark()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->watermark:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->model:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->prompt:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->image:Ljava/lang/Object;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->size:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->stream:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->response_format:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->watermark:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$size()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$sequential_image_generation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$stream()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$response_format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Boolean;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->$default$watermark()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;
    .locals 1

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$Seedream4RequestBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getStream()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getStream()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getWatermark()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getWatermark()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getModel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getPrompt()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getImage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getImage()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSize()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation_options()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation_options()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getResponse_format()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getResponse_format()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_13

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    :goto_8
    return v2

    :cond_14
    return v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->image:Ljava/lang/Object;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse_format()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->response_format:Ljava/lang/String;

    return-object p0
.end method

.method public getSequential_image_generation()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation:Ljava/lang/String;

    return-object p0
.end method

.method public getSequential_image_generation_options()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->size:Ljava/lang/String;

    return-object p0
.end method

.method public getStream()Ljava/lang/Boolean;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->stream:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getWatermark()Ljava/lang/Boolean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->watermark:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getStream()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getWatermark()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getModel()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getPrompt()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getImage()Ljava/lang/Object;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSize()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation_options()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getResponse_format()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public setImage(Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->image:Ljava/lang/Object;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->model:Ljava/lang/String;

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->prompt:Ljava/lang/String;

    return-void
.end method

.method public setResponse_format(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->response_format:Ljava/lang/String;

    return-void
.end method

.method public setSequential_image_generation(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation:Ljava/lang/String;

    return-void
.end method

.method public setSequential_image_generation_options(Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->sequential_image_generation_options:Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->size:Ljava/lang/String;

    return-void
.end method

.method public setStream(Ljava/lang/Boolean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->stream:Ljava/lang/Boolean;

    return-void
.end method

.method public setWatermark(Ljava/lang/Boolean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->watermark:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seedream4Request(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getImage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequential_image_generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequential_image_generation_options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getSequential_image_generation_options()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request$SequentialImageGenerationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getStream()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getResponse_format()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/Seedream4Request;->getWatermark()Ljava/lang/Boolean;

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
