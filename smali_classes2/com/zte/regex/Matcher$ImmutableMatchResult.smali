.class Lcom/zte/regex/Matcher$ImmutableMatchResult;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Lcom/zte/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmutableMatchResult"
.end annotation


# instance fields
.field private final first:I

.field private final groupCount:I

.field private final groups:[I

.field private final last:I

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(III[ILjava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->first:I

    .line 270
    iput p2, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->last:I

    .line 271
    iput p3, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groupCount:I

    .line 272
    iput-object p4, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groups:[I

    .line 273
    iput-object p5, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->text:Ljava/lang/String;

    return-void
.end method

.method private checkMatch()V
    .locals 1

    .line 326
    iget p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->first:I

    if-ltz p0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No match found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public end()I
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 293
    iget p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->last:I

    return p0
.end method

.method public end(I)I
    .locals 2

    .line 298
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    if-ltz p1, :cond_0

    .line 299
    iget v0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0

    .line 300
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public group(I)Ljava/lang/String;
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    if-ltz p1, :cond_2

    .line 318
    iget v0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public groupCount()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groupCount:I

    return p0
.end method

.method public start()I
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 279
    iget p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->first:I

    return p0
.end method

.method public start(I)I
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/zte/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    if-ltz p1, :cond_0

    .line 285
    iget v0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_0

    .line 287
    iget-object p0, p0, Lcom/zte/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0

    .line 286
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
