.class public final Lcom/zte/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Lcom/zte/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/regex/Matcher$ImmutableMatchResult;
    }
.end annotation


# static fields
.field static final ENDANCHOR:I = 0x1

.field static final NOANCHOR:I


# instance fields
.field acceptMode:I

.field anchoringBounds:Z

.field first:I

.field from:I

.field groups:[I

.field hitEnd:Z

.field last:I

.field lastAppendPosition:I

.field locals:[I

.field localsPos:[Lcom/zte/regex/IntHashSet;

.field lookbehindTo:I

.field modCount:I

.field oldLast:I

.field parentPattern:Lcom/zte/regex/Pattern;

.field requireEnd:Z

.field text:Ljava/lang/CharSequence;

.field to:I

.field transparentBounds:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/zte/regex/Matcher;->acceptMode:I

    const/4 v1, -0x1

    .line 135
    iput v1, p0, Lcom/zte/regex/Matcher;->first:I

    iput v0, p0, Lcom/zte/regex/Matcher;->last:I

    .line 140
    iput v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    .line 145
    iput v0, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    .line 194
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    return-void
.end method

.method constructor <init>(Lcom/zte/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/zte/regex/Matcher;->acceptMode:I

    const/4 v1, -0x1

    .line 135
    iput v1, p0, Lcom/zte/regex/Matcher;->first:I

    iput v0, p0, Lcom/zte/regex/Matcher;->last:I

    .line 140
    iput v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    .line 145
    iput v0, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    .line 194
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    .line 217
    iput-object p1, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    .line 218
    iput-object p2, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    .line 221
    iget p2, p1, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 222
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/zte/regex/Matcher;->groups:[I

    .line 223
    iget p2, p1, Lcom/zte/regex/Pattern;->localCount:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/zte/regex/Matcher;->locals:[I

    .line 224
    iget p1, p1, Lcom/zte/regex/Pattern;->localTCNCount:I

    new-array p1, p1, [Lcom/zte/regex/IntHashSet;

    iput-object p1, p0, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    .line 227
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/regex/Matcher;Ljava/lang/String;)Lcom/zte/regex/MatchResult;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/zte/regex/Matcher;->toMatchResult(Ljava/lang/String;)Lcom/zte/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private appendExpandedReplacement(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 989
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 990
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 993
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 996
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 997
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 994
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "character to be escaped is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v3, 0x24

    if-ne v2, v3, :cond_10

    add-int/lit8 v2, v1, 0x1

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_f

    .line 1006
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_9

    add-int/lit8 v1, v1, 0x2

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1012
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1013
    invoke-static {v2}, Lcom/zte/regex/ASCII;->isLower(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1014
    invoke-static {v2}, Lcom/zte/regex/ASCII;->isUpper(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1015
    invoke-static {v2}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1016
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1022
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_7

    .line 1028
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1033
    iget-object v3, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    invoke-virtual {v3}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1036
    iget-object v3, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    invoke-virtual {v3}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1034
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No group with name {"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1030
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "capturing group name {"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "} starts with digit character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "named capturing group is missing trailing \'}\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1023
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "named capturing group has 0 length name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v2, v2, -0x30

    if-ltz v2, :cond_e

    const/16 v3, 0x9

    if-gt v2, v3, :cond_e

    add-int/lit8 v1, v1, 0x2

    move v4, v0

    :goto_2
    if-nez v4, :cond_d

    .line 1048
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_a

    goto :goto_3

    .line 1051
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_d

    if-le v5, v3, :cond_b

    goto :goto_3

    :cond_b
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v5

    .line 1056
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->groupCount()I

    move-result v5

    if-ge v5, v6, :cond_c

    const/4 v4, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_2

    .line 1065
    :cond_d
    :goto_3
    invoke-virtual {p0, v2}, Lcom/zte/regex/Matcher;->start(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/zte/regex/Matcher;->end(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/zte/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/zte/regex/Matcher;->end(I)I

    move-result v2

    invoke-virtual {p2, v3, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1042
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal group reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1004
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal group reference: group index is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1068
    :cond_10
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-object p2
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x5c

    .line 784
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    return-object p0

    .line 786
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 787
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 788
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_1

    if-ne v4, v2, :cond_2

    .line 790
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toMatchResult(Ljava/lang/String;)Lcom/zte/regex/MatchResult;
    .locals 7

    .line 252
    new-instance v6, Lcom/zte/regex/Matcher$ImmutableMatchResult;

    iget v1, p0, Lcom/zte/regex/Matcher;->first:I

    iget v2, p0, Lcom/zte/regex/Matcher;->last:I

    .line 254
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->groupCount()I

    move-result v3

    iget-object p0, p0, Lcom/zte/regex/Matcher;->groups:[I

    .line 255
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zte/regex/Matcher$ImmutableMatchResult;-><init>(III[ILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/zte/regex/Matcher;
    .locals 3

    .line 879
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    invoke-direct {p0, p2, v0}, Lcom/zte/regex/Matcher;->appendExpandedReplacement(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 884
    iget-object p2, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    iget v2, p0, Lcom/zte/regex/Matcher;->first:I

    invoke-virtual {p1, p2, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 886
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 887
    iget p1, p0, Lcom/zte/regex/Matcher;->last:I

    iput p1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    .line 888
    iget p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    return-object p0

    .line 880
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/zte/regex/Matcher;
    .locals 3

    .line 969
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    invoke-direct {p0, p2, v0}, Lcom/zte/regex/Matcher;->appendExpandedReplacement(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 974
    iget-object p2, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    iget v2, p0, Lcom/zte/regex/Matcher;->first:I

    invoke-virtual {p1, p2, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 977
    iget p1, p0, Lcom/zte/regex/Matcher;->last:I

    iput p1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    .line 978
    iget p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    return-object p0

    .line 970
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method charAt(I)C
    .locals 0

    .line 1764
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public end()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_0

    .line 498
    iget p0, p0, Lcom/zte/regex/Matcher;->last:I

    return p0

    .line 497
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No match available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public end(I)I
    .locals 2

    .line 526
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_1

    if-ltz p1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 530
    iget-object p0, p0, Lcom/zte/regex/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0

    .line 529
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

    .line 527
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public end(Ljava/lang/String;)I
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/zte/regex/Matcher;->groups:[I

    invoke-virtual {p0, p1}, Lcom/zte/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public find()Z
    .locals 4

    .line 706
    iget v0, p0, Lcom/zte/regex/Matcher;->last:I

    .line 707
    iget v1, p0, Lcom/zte/regex/Matcher;->first:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 711
    :cond_0
    iget v1, p0, Lcom/zte/regex/Matcher;->from:I

    if-ge v0, v1, :cond_1

    move v0, v1

    .line 715
    :cond_1
    iget v1, p0, Lcom/zte/regex/Matcher;->to:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 716
    :goto_0
    iget-object v2, p0, Lcom/zte/regex/Matcher;->groups:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    const/4 v3, -0x1

    .line 717
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 720
    :cond_3
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->search(I)Z

    move-result p0

    return p0
.end method

.method public find(I)Z
    .locals 1

    .line 743
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 747
    invoke-virtual {p0, p1}, Lcom/zte/regex/Matcher;->search(I)Z

    move-result p0

    return p0

    .line 745
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Illegal start index"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getMatchedGroupIndex(Ljava/lang/String;)I
    .locals 2

    .line 1773
    const-string v0, "Group name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1774
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    invoke-virtual {v0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object p0, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1777
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No group with name <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1775
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getSubSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1755
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getTextLength()I
    .locals 0

    .line 1744
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public group(I)Ljava/lang/String;
    .locals 3

    .line 618
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_3

    if-ltz p1, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/zte/regex/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/zte/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 621
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

    .line 619
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 655
    invoke-virtual {p0, p1}, Lcom/zte/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result p1

    .line 656
    iget-object v0, p0, Lcom/zte/regex/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/zte/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public groupCount()I
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    iget p0, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public hasAnchoringBounds()Z
    .locals 0

    .line 1593
    iget-boolean p0, p0, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    return p0
.end method

.method public hasTransparentBounds()Z
    .locals 0

    .line 1542
    iget-boolean p0, p0, Lcom/zte/regex/Matcher;->transparentBounds:Z

    return p0
.end method

.method public hitEnd()Z
    .locals 0

    .line 1656
    iget-boolean p0, p0, Lcom/zte/regex/Matcher;->hitEnd:Z

    return p0
.end method

.method public lookingAt()Z
    .locals 2

    .line 765
    iget v0, p0, Lcom/zte/regex/Matcher;->from:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/regex/Matcher;->match(II)Z

    move-result p0

    return p0
.end method

.method match(II)Z
    .locals 5

    const/4 v0, 0x0

    .line 1718
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 1719
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->requireEnd:Z

    if-gez p1, :cond_0

    move p1, v0

    .line 1721
    :cond_0
    iput p1, p0, Lcom/zte/regex/Matcher;->first:I

    .line 1722
    iget v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    if-gez v1, :cond_1

    move v1, p1

    :cond_1
    iput v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    move v1, v0

    .line 1723
    :goto_0
    iget-object v2, p0, Lcom/zte/regex/Matcher;->groups:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 1724
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1726
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1727
    invoke-virtual {v1}, Lcom/zte/regex/IntHashSet;->clear()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1729
    :cond_4
    iput p2, p0, Lcom/zte/regex/Matcher;->acceptMode:I

    .line 1730
    iget-object p2, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    iget-object p2, p2, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    iget-object v0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, p0, p1, v0}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1732
    iput v4, p0, Lcom/zte/regex/Matcher;->first:I

    .line 1733
    :cond_5
    iget p2, p0, Lcom/zte/regex/Matcher;->last:I

    iput p2, p0, Lcom/zte/regex/Matcher;->oldLast:I

    .line 1734
    iget p2, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/zte/regex/Matcher;->modCount:I

    return p1
.end method

.method public matches()Z
    .locals 2

    .line 687
    iget v0, p0, Lcom/zte/regex/Matcher;->from:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zte/regex/Matcher;->match(II)Z

    move-result p0

    return p0
.end method

.method public pattern()Lcom/zte/regex/Pattern;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    return-object p0
.end method

.method public region(II)Lcom/zte/regex/Matcher;
    .locals 1

    if-ltz p1, :cond_2

    .line 1486
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    .line 1488
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 1492
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 1493
    iput p1, p0, Lcom/zte/regex/Matcher;->from:I

    .line 1494
    iput p2, p0, Lcom/zte/regex/Matcher;->to:I

    return-object p0

    .line 1491
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "start > end"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1489
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "end"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1487
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "start"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public regionEnd()I
    .locals 0

    .line 1521
    iget p0, p0, Lcom/zte/regex/Matcher;->to:I

    return p0
.end method

.method public regionStart()I
    .locals 0

    .line 1508
    iget p0, p0, Lcom/zte/regex/Matcher;->from:I

    return p0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 1152
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/zte/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/zte/regex/Matcher;

    .line 1157
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1162
    :cond_1
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceAll(Ljava/util/function/Function;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/zte/regex/MatchResult;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 1226
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1230
    :cond_0
    iget v1, p0, Lcom/zte/regex/Matcher;->modCount:I

    .line 1231
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1232
    iget v3, p0, Lcom/zte/regex/Matcher;->modCount:I

    if-ne v1, v3, :cond_1

    .line 1234
    invoke-virtual {p0, v0, v2}, Lcom/zte/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/zte/regex/Matcher;

    .line 1235
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 1240
    :cond_2
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1378
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 1379
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1382
    invoke-virtual {p0, v0, p1}, Lcom/zte/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/zte/regex/Matcher;

    .line 1383
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1377
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "replacement"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceFirst(Ljava/util/function/Function;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/zte/regex/MatchResult;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    .line 1448
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    iget-object p0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1450
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    iget v1, p0, Lcom/zte/regex/Matcher;->modCount:I

    .line 1452
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1453
    iget v2, p0, Lcom/zte/regex/Matcher;->modCount:I

    if-ne v1, v2, :cond_1

    .line 1455
    invoke-virtual {p0, v0, p1}, Lcom/zte/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/zte/regex/Matcher;

    .line 1456
    invoke-virtual {p0, v0}, Lcom/zte/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1454
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public requireEnd()Z
    .locals 0

    .line 1674
    iget-boolean p0, p0, Lcom/zte/regex/Matcher;->requireEnd:Z

    return p0
.end method

.method public reset()Lcom/zte/regex/Matcher;
    .locals 5

    const/4 v0, -0x1

    .line 377
    iput v0, p0, Lcom/zte/regex/Matcher;->first:I

    const/4 v1, 0x0

    .line 378
    iput v1, p0, Lcom/zte/regex/Matcher;->last:I

    .line 379
    iput v0, p0, Lcom/zte/regex/Matcher;->oldLast:I

    move v2, v1

    .line 380
    :goto_0
    iget-object v3, p0, Lcom/zte/regex/Matcher;->groups:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 381
    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 382
    :goto_1
    iget-object v3, p0, Lcom/zte/regex/Matcher;->locals:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 383
    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 384
    :goto_2
    iget-object v2, p0, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 385
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {v2}, Lcom/zte/regex/IntHashSet;->clear()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 388
    :cond_3
    iput v1, p0, Lcom/zte/regex/Matcher;->lastAppendPosition:I

    .line 389
    iput v1, p0, Lcom/zte/regex/Matcher;->from:I

    .line 390
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v0

    iput v0, p0, Lcom/zte/regex/Matcher;->to:I

    .line 391
    iget v0, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/regex/Matcher;->modCount:I

    return-object p0
.end method

.method public reset(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    .line 411
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->reset()Lcom/zte/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public results()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/zte/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .line 1338
    new-instance v0, Lcom/zte/regex/Matcher$1MatchResultIterator;

    invoke-direct {v0, p0}, Lcom/zte/regex/Matcher$1MatchResultIterator;-><init>(Lcom/zte/regex/Matcher;)V

    const/16 p0, 0x110

    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method search(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 1691
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->hitEnd:Z

    .line 1692
    iput-boolean v0, p0, Lcom/zte/regex/Matcher;->requireEnd:Z

    if-gez p1, :cond_0

    move p1, v0

    .line 1694
    :cond_0
    iput p1, p0, Lcom/zte/regex/Matcher;->first:I

    .line 1695
    iget v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    if-gez v1, :cond_1

    move v1, p1

    :cond_1
    iput v1, p0, Lcom/zte/regex/Matcher;->oldLast:I

    move v1, v0

    .line 1696
    :goto_0
    iget-object v2, p0, Lcom/zte/regex/Matcher;->groups:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 1697
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1698
    :goto_1
    iget-object v2, p0, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 1699
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 1700
    invoke-virtual {v2}, Lcom/zte/regex/IntHashSet;->clear()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1702
    :cond_4
    iput v0, p0, Lcom/zte/regex/Matcher;->acceptMode:I

    .line 1703
    iget-object v0, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    iget-object v0, v0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    iget-object v1, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1, v1}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1705
    iput v4, p0, Lcom/zte/regex/Matcher;->first:I

    .line 1706
    :cond_5
    iget v0, p0, Lcom/zte/regex/Matcher;->last:I

    iput v0, p0, Lcom/zte/regex/Matcher;->oldLast:I

    .line 1707
    iget v0, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/regex/Matcher;->modCount:I

    return p1
.end method

.method public start()I
    .locals 1

    .line 424
    iget p0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz p0, :cond_0

    return p0

    .line 425
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No match available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(I)I
    .locals 2

    .line 454
    iget v0, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v0, :cond_1

    if-ltz p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/zte/regex/Matcher;->groups:[I

    mul-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0

    .line 457
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

    .line 455
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No match available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(Ljava/lang/String;)I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/zte/regex/Matcher;->groups:[I

    invoke-virtual {p0, p1}, Lcom/zte/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public toMatchResult()Lcom/zte/regex/MatchResult;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/zte/regex/Matcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/regex/Matcher;->toMatchResult(Ljava/lang/String;)Lcom/zte/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matcher[pattern="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->pattern()Lcom/zte/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region="

    .line 1634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1635
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastmatch="

    .line 1636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    iget v1, p0, Lcom/zte/regex/Matcher;->first:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1638
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x5d

    .line 1640
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useAnchoringBounds(Z)Lcom/zte/regex/Matcher;
    .locals 0

    .line 1618
    iput-boolean p1, p0, Lcom/zte/regex/Matcher;->anchoringBounds:Z

    return-object p0
.end method

.method public usePattern(Lcom/zte/regex/Pattern;)Lcom/zte/regex/Matcher;
    .locals 4

    if-eqz p1, :cond_2

    .line 351
    iput-object p1, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    .line 354
    iget v0, p1, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 355
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zte/regex/Matcher;->groups:[I

    .line 356
    iget p1, p1, Lcom/zte/regex/Pattern;->localCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zte/regex/Matcher;->locals:[I

    const/4 p1, 0x0

    move v0, p1

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/zte/regex/Matcher;->groups:[I

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_0

    .line 358
    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zte/regex/Matcher;->locals:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 360
    aput v3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/zte/regex/Matcher;->parentPattern:Lcom/zte/regex/Pattern;

    iget p1, p1, Lcom/zte/regex/Pattern;->localTCNCount:I

    new-array p1, p1, [Lcom/zte/regex/IntHashSet;

    iput-object p1, p0, Lcom/zte/regex/Matcher;->localsPos:[Lcom/zte/regex/IntHashSet;

    .line 362
    iget p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zte/regex/Matcher;->modCount:I

    return-object p0

    .line 350
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pattern cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useTransparentBounds(Z)Lcom/zte/regex/Matcher;
    .locals 0

    .line 1572
    iput-boolean p1, p0, Lcom/zte/regex/Matcher;->transparentBounds:Z

    return-object p0
.end method
