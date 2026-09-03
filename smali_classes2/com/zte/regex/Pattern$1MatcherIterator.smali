.class Lcom/zte/regex/Pattern$1MatcherIterator;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field private emptyElementCount:I

.field private matcher:Lcom/zte/regex/Matcher;

.field private nextElement:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/regex/Pattern;

.field final synthetic val$input:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5098
    iput-object p1, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->this$0:Lcom/zte/regex/Pattern;

    iput-object p2, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 5123
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->matcher:Lcom/zte/regex/Matcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 5124
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->this$0:Lcom/zte/regex/Pattern;

    iget-object v3, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->matcher:Lcom/zte/regex/Matcher;

    .line 5128
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 5130
    :cond_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-lez v0, :cond_2

    goto :goto_2

    .line 5133
    :cond_2
    iget v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    iget-object v3, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    return v1

    .line 5138
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->matcher:Lcom/zte/regex/Matcher;

    invoke-virtual {v0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5139
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    iget-object v4, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->matcher:Lcom/zte/regex/Matcher;

    invoke-virtual {v4}, Lcom/zte/regex/Matcher;->start()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5140
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->matcher:Lcom/zte/regex/Matcher;

    invoke-virtual {v0}, Lcom/zte/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    .line 5141
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 5143
    :cond_4
    iget v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    if-lez v0, :cond_3

    .line 5145
    iget v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    goto :goto_1

    .line 5150
    :cond_5
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5151
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->current:I

    .line 5152
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 5156
    :cond_6
    iput v1, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    const/4 v0, 0x0

    .line 5157
    iput-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    return v1

    :cond_7
    :goto_2
    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 5098
    invoke-virtual {p0}, Lcom/zte/regex/Pattern$1MatcherIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 5109
    invoke-virtual {p0}, Lcom/zte/regex/Pattern$1MatcherIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5112
    iget v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-nez v0, :cond_0

    .line 5113
    iget-object v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5114
    iput-object v1, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5117
    iput v0, p0, Lcom/zte/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 5118
    const-string p0, ""

    return-object p0

    .line 5110
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
