.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    }
.end annotation


# instance fields
.field public accountId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_id"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale_info"
    .end annotation
.end field

.field public offset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field

.field public queries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "queries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query_intention"
    .end annotation
.end field

.field public sourceType:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public videoToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;IIJLjava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Ljava/lang/String;",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queries:Ljava/util/List;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->sourceType:Ljava/util/List;

    iput p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->offset:I

    iput p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->count:I

    iput-wide p5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->accountId:J

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->videoToken:Ljava/lang/String;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;
    .locals 1

    .line 116
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input$InputBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 115
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getOffset()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getAccountId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueries()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getSourceType()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getSourceType()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getVideoToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getVideoToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getLocaleInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getLocaleInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_3
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueryIntention()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueryIntention()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    move-result-object p1

    if-nez p0, :cond_e

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    :goto_4
    return v2

    :cond_f
    return v0
.end method

.method public getAccountId()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->accountId:J

    return-wide v0
.end method

.method public getCount()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->count:I

    return p0
.end method

.method public getLocaleInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->offset:I

    return p0
.end method

.method public getQueries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queries:Ljava/util/List;

    return-object p0
.end method

.method public getQueryIntention()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    return-object p0
.end method

.method public getSourceType()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->sourceType:Ljava/util/List;

    return-object p0
.end method

.method public getVideoToken()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->videoToken:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getOffset()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getAccountId()J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueries()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getSourceType()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getVideoToken()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getLocaleInfo()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->getQueryIntention()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public setAccountId(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->accountId:J

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->count:I

    return-void
.end method

.method public setLocaleInfo(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->localeInfo:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$LocaleInfo;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->offset:I

    return-void
.end method

.method public setQueries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queries:Ljava/util/List;

    return-void
.end method

.method public setQueryIntention(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->queryIntention:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$QueryIntention;

    return-void
.end method

.method public setSourceType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->sourceType:Ljava/util/List;

    return-void
.end method

.method public setVideoToken(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;->videoToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 145
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
