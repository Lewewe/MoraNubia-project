.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;
.super Ljava/lang/Object;
.source "FollowUp.java"


# instance fields
.field private item:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->getItem()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->getItem()Ljava/lang/String;

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

.method public getItem()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->item:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->getItem()Ljava/lang/String;

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

.method public setItem(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->item:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FollowUp(item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/FollowUp;->getItem()Ljava/lang/String;

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
