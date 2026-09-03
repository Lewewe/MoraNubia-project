.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimingBuilder"
.end annotation


# instance fields
.field private total:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;
    .locals 1

    .line 301
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;->total:I

    invoke-direct {v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.Timing.TimingBuilder(total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;->total:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public total(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;
    .locals 0

    .line 301
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Timing$TimingBuilder;->total:I

    return-object p0
.end method
