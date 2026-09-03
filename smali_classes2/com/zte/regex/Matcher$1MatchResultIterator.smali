.class Lcom/zte/regex/Matcher$1MatchResultIterator;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/regex/Matcher;->results()Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchResultIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/zte/regex/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field expectedCount:I

.field state:I

.field textAsString:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/regex/Matcher;


# direct methods
.method constructor <init>(Lcom/zte/regex/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1268
    iput-object p1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1270
    iput p1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    .line 1273
    iput p1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/zte/regex/MatchResult;",
            ">;)V"
        }
    .end annotation

    .line 1312
    iget v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v1, v1, Lcom/zte/regex/Matcher;->modCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 1315
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 1320
    iput v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    const/4 v1, -0x1

    .line 1321
    iput v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-gez v0, :cond_3

    .line 1324
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    invoke-virtual {v0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1328
    :cond_3
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget-object v0, v0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v0, v0, Lcom/zte/regex/Matcher;->modCount:I

    .line 1332
    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget-object v2, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zte/regex/Matcher;->access$000(Lcom/zte/regex/Matcher;Ljava/lang/String;)Lcom/zte/regex/MatchResult;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1333
    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v1, v1, Lcom/zte/regex/Matcher;->modCount:I

    if-ne v0, v1, :cond_5

    .line 1335
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    invoke-virtual {v0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1334
    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 3

    .line 1292
    iget v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1298
    :cond_1
    iget v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v2, v2, Lcom/zte/regex/Matcher;->modCount:I

    if-eq v0, v2, :cond_2

    return v1

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    invoke-virtual {v0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1303
    iget v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    if-gez v1, :cond_3

    .line 1304
    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget-object v1, v1, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    .line 1305
    :cond_3
    iput v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    .line 1306
    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v1, v1, Lcom/zte/regex/Matcher;->modCount:I

    iput v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    return v0
.end method

.method public next()Lcom/zte/regex/MatchResult;
    .locals 2

    .line 1280
    iget v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget v1, v1, Lcom/zte/regex/Matcher;->modCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1281
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 1283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zte/regex/Matcher$1MatchResultIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 1286
    iput v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->state:I

    .line 1287
    iget-object v0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->this$0:Lcom/zte/regex/Matcher;

    iget-object p0, p0, Lcom/zte/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zte/regex/Matcher;->access$000(Lcom/zte/regex/Matcher;Ljava/lang/String;)Lcom/zte/regex/MatchResult;

    move-result-object p0

    return-object p0

    .line 1284
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1268
    invoke-virtual {p0}, Lcom/zte/regex/Matcher$1MatchResultIterator;->next()Lcom/zte/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method
