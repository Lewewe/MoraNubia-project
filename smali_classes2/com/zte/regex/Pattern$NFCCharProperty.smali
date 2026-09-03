.class Lcom/zte/regex/Pattern$NFCCharProperty;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NFCCharProperty"
.end annotation


# instance fields
.field predicate:Lcom/zte/regex/Pattern$CharPredicate;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$CharPredicate;)V
    .locals 0

    .line 3230
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 3231
    iput-object p1, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 3235
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_3

    .line 3236
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3237
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 3238
    iget v4, p1, Lcom/zte/regex/Matcher;->to:I

    invoke-static {p3, p2, v4}, Lcom/zte/regex/Grapheme;->nextBoundary(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/2addr v3, p2

    if-ne v3, v4, :cond_0

    .line 3240
    iget-object p2, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-interface {p2, v0}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3241
    iget-object p0, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    :goto_0
    if-ge v3, v4, :cond_2

    .line 3245
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 3244
    invoke-static {v0, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 3246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 3247
    iget-object v5, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-interface {v5, v0}, Lcom/zte/regex/Pattern$CharPredicate;->is(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->next:Lcom/zte/regex/Pattern$Node;

    .line 3248
    invoke-virtual {v0, p1, v4, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3253
    :cond_1
    invoke-static {p3, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3254
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_0

    .line 3257
    :cond_2
    iget p0, p1, Lcom/zte/regex/Matcher;->to:I

    if-ge v4, p0, :cond_3

    return v2

    .line 3260
    :cond_3
    iput-boolean v1, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    return v2
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    .line 3265
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    const/4 v0, 0x0

    .line 3266
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3267
    iget-object p0, p0, Lcom/zte/regex/Pattern$NFCCharProperty;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
