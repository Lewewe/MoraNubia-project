.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBuilder"
.end annotation


# instance fields
.field private accountId:J

.field private count:I

.field private localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

.field private offset:I

.field private queries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

.field private sourceType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountId(J)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->accountId:J

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;
    .locals 11

    .line 116
    new-instance v10, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queries:Ljava/util/List;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->sourceType:Ljava/util/List;

    iget v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->offset:I

    iget v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->count:I

    iget-wide v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->accountId:J

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->videoToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;-><init>(Ljava/util/List;Ljava/util/List;IIJLjava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;)V

    return-object v10
.end method

.method public count(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->count:I

    return-object p0
.end method

.method public localeInfo(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    return-object p0
.end method

.method public offset(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->offset:I

    return-object p0
.end method

.method public queries(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queries:Ljava/util/List;

    return-object p0
.end method

.method public queryIntention(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    return-object p0
.end method

.method public sourceType(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->sourceType:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.Input.InputBuilder(queries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->sourceType:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->accountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->videoToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryIntention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public videoToken(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;->videoToken:Ljava/lang/String;

    return-object p0
.end method
