.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    }
.end annotation


# instance fields
.field private n:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private skin_retouch:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skin_retouch"
    .end annotation
.end field

.field private style:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field


# direct methods
.method private static $default$n()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static $default$size()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "768*1024"

    return-object v0
.end method

.method private static $default$skin_retouch()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$n()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->n:Ljava/lang/Integer;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$skin_retouch()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->skin_retouch:Ljava/lang/Boolean;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$size()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->size:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->n:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->skin_retouch:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->style:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->size:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .line 44
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$n()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .line 44
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$skin_retouch()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->$default$size()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;
    .locals 1

    .line 41
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters$ParametersBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getN()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getN()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSkin_retouch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSkin_retouch()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getStyle()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSize()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSize()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getN()Ljava/lang/Integer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->size:Ljava/lang/String;

    return-object p0
.end method

.method public getSkin_retouch()Ljava/lang/Boolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->skin_retouch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->style:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getN()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSkin_retouch()Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getStyle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSize()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setN(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->n:Ljava/lang/Integer;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->size:Ljava/lang/String;

    return-void
.end method

.method public setSkin_retouch(Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->skin_retouch:Ljava/lang/Boolean;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->style:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenPotraitData.Parameters(n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getN()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skin_retouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSkin_retouch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Parameters;->getSize()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
