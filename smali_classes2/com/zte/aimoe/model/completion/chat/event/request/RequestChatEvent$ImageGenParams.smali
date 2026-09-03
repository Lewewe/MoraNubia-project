.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageGenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    }
.end annotation


# instance fields
.field private ddimSteps:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ddim_steps"
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo_info"
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt"
    .end annotation
.end field

.field private reqKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_key"
    .end annotation
.end field

.field private returnUrl:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "return_url"
    .end annotation
.end field

.field private scale:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scale"
    .end annotation
.end field

.field private seed:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seed"
    .end annotation
.end field

.field private usePreLlm:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_pre_llm"
    .end annotation
.end field

.field private useSr:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_sr"
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method private static $default$ddimSteps()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x19

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static $default$height()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x200

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static $default$returnUrl()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static $default$scale()Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x40600000    # 3.5f

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static $default$seed()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static $default$usePreLlm()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static $default$useSr()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static $default$width()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x200

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->reqKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->prompt:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->seed:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->scale:Ljava/lang/Float;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->ddimSteps:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->width:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->height:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->usePreLlm:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->useSr:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->returnUrl:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/Boolean;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$usePreLlm()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/Boolean;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$useSr()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/Boolean;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$returnUrl()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Integer;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$seed()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Float;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$scale()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/Integer;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$ddimSteps()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Integer;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$width()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Integer;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->$default$height()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;
    .locals 1

    .line 66
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$ImageGenParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 67
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getSeed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getSeed()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getScale()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getScale()Ljava/lang/Float;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getDdimSteps()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getDdimSteps()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getWidth()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getHeight()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUsePreLlm()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUsePreLlm()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUseSr()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUseSr()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReturnUrl()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReturnUrl()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReqKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReqKey()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getPrompt()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p1

    if-nez p0, :cond_17

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    :goto_a
    return v2

    :cond_18
    return v0
.end method

.method public getDdimSteps()Ljava/lang/Integer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->ddimSteps:Ljava/lang/Integer;

    return-object p0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public getReqKey()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->reqKey:Ljava/lang/String;

    return-object p0
.end method

.method public getReturnUrl()Ljava/lang/Boolean;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->returnUrl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getScale()Ljava/lang/Float;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->scale:Ljava/lang/Float;

    return-object p0
.end method

.method public getSeed()Ljava/lang/Integer;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->seed:Ljava/lang/Integer;

    return-object p0
.end method

.method public getUsePreLlm()Ljava/lang/Boolean;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->usePreLlm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getUseSr()Ljava/lang/Boolean;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->useSr:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getSeed()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getScale()Ljava/lang/Float;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getDdimSteps()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getWidth()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getHeight()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUsePreLlm()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getUseSr()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReturnUrl()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getReqKey()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getPrompt()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->getLogoInfo()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public setDdimSteps(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->ddimSteps:Ljava/lang/Integer;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setLogoInfo(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->logoInfo:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams$LogoInfo;

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->prompt:Ljava/lang/String;

    return-void
.end method

.method public setReqKey(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->reqKey:Ljava/lang/String;

    return-void
.end method

.method public setReturnUrl(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->returnUrl:Ljava/lang/Boolean;

    return-void
.end method

.method public setScale(Ljava/lang/Float;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->scale:Ljava/lang/Float;

    return-void
.end method

.method public setSeed(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->seed:Ljava/lang/Integer;

    return-void
.end method

.method public setUsePreLlm(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->usePreLlm:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseSr(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->useSr:Ljava/lang/Boolean;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;->width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
