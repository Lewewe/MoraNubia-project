.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;
.super Ljava/lang/Object;
.source "AliGenPotraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input$InputBuilder;
    }
.end annotation


# instance fields
.field private templateUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_url"
    .end annotation
.end field

.field private userImages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->templateUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->userImages:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input$InputBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input$InputBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input$InputBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getTemplateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getTemplateUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getUserImages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getUserImages()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->templateUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUserImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->userImages:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getTemplateUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getUserImages()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->templateUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->userImages:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliGenPotraitData.Input(templateUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getTemplateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/ali/AliGenPotraitData$Input;->getUserImages()Ljava/util/List;

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
