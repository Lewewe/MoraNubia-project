.class public final Lcom/zte/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/regex/Pattern$Start;,
        Lcom/zte/regex/Pattern$Node;,
        Lcom/zte/regex/Pattern$GroupHead;,
        Lcom/zte/regex/Pattern$Slice;,
        Lcom/zte/regex/Pattern$BnM;,
        Lcom/zte/regex/Pattern$StartS;,
        Lcom/zte/regex/Pattern$Begin;,
        Lcom/zte/regex/Pattern$First;,
        Lcom/zte/regex/Pattern$Loop;,
        Lcom/zte/regex/Pattern$BranchConn;,
        Lcom/zte/regex/Pattern$Branch;,
        Lcom/zte/regex/Pattern$NFCCharProperty;,
        Lcom/zte/regex/Pattern$CharPredicate;,
        Lcom/zte/regex/Pattern$CharProperty;,
        Lcom/zte/regex/Pattern$UnixCaret;,
        Lcom/zte/regex/Pattern$Caret;,
        Lcom/zte/regex/Pattern$UnixDollar;,
        Lcom/zte/regex/Pattern$Dollar;,
        Lcom/zte/regex/Pattern$CIBackRef;,
        Lcom/zte/regex/Pattern$BackRef;,
        Lcom/zte/regex/Pattern$Bound;,
        Lcom/zte/regex/Pattern$BmpCharPredicate;,
        Lcom/zte/regex/Pattern$LastMatch;,
        Lcom/zte/regex/Pattern$LineEnding;,
        Lcom/zte/regex/Pattern$XGrapheme;,
        Lcom/zte/regex/Pattern$GraphemeBound;,
        Lcom/zte/regex/Pattern$End;,
        Lcom/zte/regex/Pattern$BitClass;,
        Lcom/zte/regex/Pattern$BmpCharProperty;,
        Lcom/zte/regex/Pattern$Pos;,
        Lcom/zte/regex/Pattern$Neg;,
        Lcom/zte/regex/Pattern$Ques;,
        Lcom/zte/regex/Pattern$Qtype;,
        Lcom/zte/regex/Pattern$LookBehindEndNode;,
        Lcom/zte/regex/Pattern$TreeInfo;,
        Lcom/zte/regex/Pattern$BehindS;,
        Lcom/zte/regex/Pattern$Behind;,
        Lcom/zte/regex/Pattern$NotBehindS;,
        Lcom/zte/regex/Pattern$NotBehind;,
        Lcom/zte/regex/Pattern$Curly;,
        Lcom/zte/regex/Pattern$GroupTail;,
        Lcom/zte/regex/Pattern$GroupCurly;,
        Lcom/zte/regex/Pattern$LazyLoop;,
        Lcom/zte/regex/Pattern$Prolog;,
        Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;,
        Lcom/zte/regex/Pattern$CharPropertyGreedy;,
        Lcom/zte/regex/Pattern$SliceUS;,
        Lcom/zte/regex/Pattern$SliceU;,
        Lcom/zte/regex/Pattern$SliceIS;,
        Lcom/zte/regex/Pattern$SliceI;,
        Lcom/zte/regex/Pattern$SliceS;,
        Lcom/zte/regex/Pattern$LastNode;,
        Lcom/zte/regex/Pattern$BnMS;,
        Lcom/zte/regex/Pattern$SliceNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_FLAGS:I = 0x1ff

.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field public static final LITERAL:I = 0x10

.field static final MAX_REPS:I = 0x7fffffff

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNICODE_CHARACTER_CLASS:I = 0x100

.field public static final UNIX_LINES:I = 0x1

.field static final accept:Lcom/zte/regex/Pattern$Node;

.field static final lastAccept:Lcom/zte/regex/Pattern$Node;

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field transient buffer:[I

.field transient capturingGroupCount:I

.field private volatile transient compiled:Z

.field private transient cursor:I

.field private flags:I

.field private transient flags0:I

.field transient groupNodes:[Lcom/zte/regex/Pattern$GroupHead;

.field transient hasGroupRef:Z

.field private transient hasSupplementary:Z

.field transient localCount:I

.field transient localTCNCount:I

.field transient matchRoot:Lcom/zte/regex/Pattern$Node;

.field volatile transient namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient normalizedPattern:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private transient patternLength:I

.field transient predicate:Lcom/zte/regex/Pattern$CharPredicate;

.field transient root:Lcom/zte/regex/Pattern$Node;

.field private transient temp:[I

.field transient topClosureNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/regex/Pattern$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5020
    new-instance v0, Lcom/zte/regex/Pattern$Node;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    sput-object v0, Lcom/zte/regex/Pattern;->accept:Lcom/zte/regex/Pattern$Node;

    .line 5022
    new-instance v0, Lcom/zte/regex/Pattern$LastNode;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$LastNode;-><init>()V

    sput-object v0, Lcom/zte/regex/Pattern;->lastAccept:Lcom/zte/regex/Pattern$Node;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p2, -0x200

    if-nez v0, :cond_2

    .line 661
    iput-object p1, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    .line 662
    iput p2, p0, Lcom/zte/regex/Pattern;->flags:I

    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_0

    or-int/lit8 p2, p2, 0x40

    .line 666
    iput p2, p0, Lcom/zte/regex/Pattern;->flags:I

    .line 669
    :cond_0
    iget p2, p0, Lcom/zte/regex/Pattern;->flags:I

    iput p2, p0, Lcom/zte/regex/Pattern;->flags0:I

    const/4 p2, 0x1

    .line 672
    iput p2, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    const/4 p2, 0x0

    .line 673
    iput p2, p0, Lcom/zte/regex/Pattern;->localCount:I

    .line 674
    iput p2, p0, Lcom/zte/regex/Pattern;->localTCNCount:I

    .line 676
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->compile()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    const-string p1, "Stack overflow during pattern compilation"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 683
    :cond_1
    new-instance p1, Lcom/zte/regex/Pattern$Start;

    sget-object p2, Lcom/zte/regex/Pattern;->lastAccept:Lcom/zte/regex/Pattern$Node;

    invoke-direct {p1, p2}, Lcom/zte/regex/Pattern$Start;-><init>(Lcom/zte/regex/Pattern$Node;)V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 684
    iput-object p2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    :goto_0
    return-void

    .line 658
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown flag 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static ALL()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4933
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method static CIRange(II)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 5001
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda7;-><init>(II)V

    return-object v0
.end method

.method static CIRangeU(II)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 5008
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda5;-><init>(II)V

    return-object v0
.end method

.method static DOT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4940
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda14;-><init>()V

    return-object v0
.end method

.method static HorizWS()Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 4922
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda8;-><init>()V

    return-object v0
.end method

.method private N()I
    .locals 4

    .line 2674
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    .line 2675
    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 2676
    :goto_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    .line 2677
    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v2, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 2678
    :cond_0
    const-string v0, "Unclosed character name escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2680
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v3, p0, Lcom/zte/regex/Pattern;->cursor:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([III)V

    .line 2682
    :try_start_0
    invoke-static {v1}, Ljava/lang/Character;->codePointOf(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2684
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown character name ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2687
    :cond_2
    const-string v0, "Illegal character name escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method static Range(II)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_1

    const v0, 0xdfff

    if-le p0, v0, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 4994
    :cond_0
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda4;-><init>(II)V

    return-object v0

    .line 4993
    :cond_1
    :goto_0
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda3;-><init>(II)V

    return-object v0
.end method

.method private RemoveQEQuoting()V
    .locals 13

    .line 914
    iget v0, p0, Lcom/zte/regex/Pattern;->patternLength:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x51

    const/16 v5, 0x5c

    if-ge v2, v3, :cond_1

    .line 917
    iget-object v6, p0, Lcom/zte/regex/Pattern;->temp:[I

    aget v7, v6, v2

    if-eq v7, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v2, 0x1

    .line 919
    aget v6, v6, v7

    if-eq v6, v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    if-lt v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v2, 0x2

    sub-int v6, v0, v3

    const/4 v7, 0x3

    .line 930
    :try_start_0
    invoke-static {v7, v6}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    new-array v6, v6, [I

    .line 935
    iget-object v7, p0, Lcom/zte/regex/Pattern;->temp:[I

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x1

    :goto_1
    move v8, v7

    move v9, v8

    :goto_2
    if-ge v3, v0, :cond_d

    .line 940
    iget-object v10, p0, Lcom/zte/regex/Pattern;->temp:[I

    add-int/lit8 v11, v3, 0x1

    aget v10, v10, v3

    .line 941
    invoke-static {v10}, Lcom/zte/regex/ASCII;->isAscii(I)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {v10}, Lcom/zte/regex/ASCII;->isAlpha(I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    .line 943
    :cond_3
    invoke-static {v10}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v8, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 950
    aput v5, v6, v2

    add-int/lit8 v8, v2, 0x2

    const/16 v12, 0x78

    .line 951
    aput v12, v6, v3

    add-int/lit8 v2, v2, 0x3

    const/16 v3, 0x33

    .line 952
    aput v3, v6, v8

    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 954
    aput v10, v6, v2

    goto :goto_4

    :cond_5
    if-eq v10, v5, :cond_7

    if-eqz v9, :cond_6

    add-int/lit8 v3, v2, 0x1

    .line 956
    aput v5, v6, v2

    move v2, v3

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 957
    aput v10, v6, v2

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_9

    .line 959
    iget-object v8, p0, Lcom/zte/regex/Pattern;->temp:[I

    aget v8, v8, v11

    const/16 v10, 0x45

    if-ne v8, v10, :cond_8

    add-int/lit8 v3, v3, 0x2

    move v9, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 963
    aput v5, v6, v2

    add-int/lit8 v2, v2, 0x2

    .line 964
    aput v5, v6, v3

    goto :goto_5

    .line 967
    :cond_9
    iget-object v8, p0, Lcom/zte/regex/Pattern;->temp:[I

    aget v12, v8, v11

    if-ne v12, v4, :cond_a

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_a
    add-int/lit8 v12, v2, 0x1

    .line 973
    aput v10, v6, v2

    if-eq v11, v0, :cond_b

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    .line 975
    aget v8, v8, v11

    aput v8, v6, v12

    goto :goto_6

    :cond_b
    move v3, v11

    move v2, v12

    goto :goto_6

    :cond_c
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .line 942
    aput v10, v6, v2

    :goto_4
    move v2, v3

    :goto_5
    move v3, v11

    :goto_6
    move v8, v1

    goto :goto_2

    .line 982
    :cond_d
    iput v2, p0, Lcom/zte/regex/Pattern;->patternLength:I

    add-int/lit8 v2, v2, 0x2

    .line 983
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    return-void

    .line 932
    :catch_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "Required pattern length too large"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static Single(I)Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 4964
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda6;-><init>(I)V

    return-object v0
.end method

.method static SingleI(II)Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 4971
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda11;-><init>(II)V

    return-object v0
.end method

.method static SingleS(I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4957
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda13;-><init>(I)V

    return-object v0
.end method

.method static SingleU(I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4978
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda0;-><init>(I)V

    return-object v0
.end method

.method static UNIXDOT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 4950
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda12;-><init>()V

    return-object v0
.end method

.method static VertWS()Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 4914
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method private accept(ILjava/lang/String;)V
    .locals 3

    .line 1122
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    const/4 v1, 0x4

    .line 1123
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->parsePastWhitespace(I)I

    move-result v0

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 1126
    :cond_1
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/zte/regex/Pattern;->hasBaseCharacter(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private addFlag()V
    .locals 2

    .line 2416
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    :goto_0
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x55

    if-eq v0, v1, :cond_7

    const/16 v1, 0x69

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x73

    if-eq v0, v1, :cond_4

    const/16 v1, 0x75

    if-eq v0, v1, :cond_3

    const/16 v1, 0x78

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2429
    :cond_0
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2435
    :cond_1
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2438
    :cond_2
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2432
    :cond_3
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2426
    :cond_4
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2423
    :cond_5
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2420
    :cond_6
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2441
    :cond_7
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    or-int/lit16 v0, v0, 0x140

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    .line 2449
    :goto_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v0

    goto :goto_0

    .line 2444
    :cond_8
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 2445
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->subFlag()V

    :goto_2
    return-void
.end method

.method private append(II)V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/zte/regex/Pattern;->buffer:[I

    array-length v0, v0

    sub-int v1, p2, v0

    if-ltz v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v0

    .line 1576
    invoke-static {v0, v1, v0}, Lcom/zte/regex/ArraysSupport;->newLength(III)I

    move-result v0

    .line 1579
    iget-object v1, p0, Lcom/zte/regex/Pattern;->buffer:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern;->buffer:[I

    .line 1581
    :cond_0
    iget-object p0, p0, Lcom/zte/regex/Pattern;->buffer:[I

    aput p1, p0, p2

    return-void
.end method

.method private atom()Lcom/zte/regex/Pattern$Node;
    .locals 8

    .line 1492
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eqz v0, :cond_c

    const/16 v6, 0x24

    if-eq v0, v6, :cond_d

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_d

    const/16 v6, 0x3f

    if-eq v0, v6, :cond_b

    const/16 v6, 0x5e

    if-eq v0, v6, :cond_d

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_d

    const/16 v6, 0x5c

    const/16 v7, 0x7b

    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_b

    const/16 v6, 0x7c

    if-eq v0, v6, :cond_d

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 1513
    :cond_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->nextEscaped()I

    move-result v0

    const/16 v2, 0x70

    const/16 v6, 0x50

    if-eq v0, v2, :cond_6

    if-ne v0, v6, :cond_1

    goto :goto_2

    .line 1532
    :cond_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 1533
    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    if-nez v3, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1534
    :goto_1
    invoke-direct {p0, v1, v0, v1}, Lcom/zte/regex/Pattern;->escape(ZZZ)I

    move-result v0

    if-ltz v0, :cond_4

    .line 1536
    invoke-direct {p0, v0, v3}, Lcom/zte/regex/Pattern;->append(II)V

    add-int/lit8 v3, v3, 0x1

    .line 1538
    invoke-static {v0}, Lcom/zte/regex/Pattern;->isSupplementary(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v5

    .line 1541
    :cond_3
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 1544
    iget-object p0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object p0

    .line 1547
    :cond_5
    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    goto :goto_4

    :cond_6
    :goto_2
    if-lez v3, :cond_7

    .line 1516
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    goto :goto_4

    :cond_7
    if-ne v0, v6, :cond_8

    move v0, v5

    goto :goto_3

    :cond_8
    move v0, v1

    .line 1521
    :goto_3
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v2

    if-eq v2, v7, :cond_9

    .line 1523
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    move v1, v5

    :cond_9
    const/16 v2, 0x80

    .line 1526
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1527
    new-instance v2, Lcom/zte/regex/Pattern$NFCCharProperty;

    invoke-direct {p0, v1, v0}, Lcom/zte/regex/Pattern;->family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/zte/regex/Pattern$NFCCharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object v2

    .line 1529
    :cond_a
    invoke-direct {p0, v1, v0}, Lcom/zte/regex/Pattern;->family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p0

    return-object p0

    :cond_b
    :pswitch_0
    if-le v3, v5, :cond_d

    .line 1500
    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1550
    :cond_c
    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v6, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-lt v2, v6, :cond_f

    :cond_d
    :goto_4
    :pswitch_1
    if-ne v3, v5, :cond_e

    .line 1567
    iget-object v0, p0, Lcom/zte/regex/Pattern;->buffer:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->single(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p0

    return-object p0

    .line 1569
    :cond_e
    iget-object v0, p0, Lcom/zte/regex/Pattern;->buffer:[I

    invoke-direct {p0, v0, v3, v4}, Lcom/zte/regex/Pattern;->newSlice([IIZ)Lcom/zte/regex/Pattern$Node;

    move-result-object p0

    return-object p0

    .line 1555
    :cond_f
    :goto_5
    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 1556
    invoke-direct {p0, v0, v3}, Lcom/zte/regex/Pattern;->append(II)V

    add-int/lit8 v3, v3, 0x1

    .line 1558
    invoke-static {v0}, Lcom/zte/regex/Pattern;->isSupplementary(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v4, v5

    .line 1561
    :cond_10
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bitsOrSingle(Lcom/zte/regex/Pattern$BitClass;I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    const/16 v0, 0x100

    if-ge p2, v0, :cond_1

    const/4 v0, 0x2

    .line 1999
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb5

    if-eq p2, v0, :cond_1

    const/16 v0, 0x49

    if-eq p2, v0, :cond_1

    const/16 v0, 0x69

    if-eq p2, v0, :cond_1

    const/16 v0, 0x53

    if-eq p2, v0, :cond_1

    const/16 v0, 0x73

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4b

    if-eq p2, v0, :cond_1

    const/16 v0, 0x6b

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc5

    if-eq p2, v0, :cond_1

    const/16 v0, 0xe5

    if-eq p2, v0, :cond_1

    .line 2005
    :cond_0
    iget p0, p0, Lcom/zte/regex/Pattern;->flags0:I

    invoke-virtual {p1, p2, p0}, Lcom/zte/regex/Pattern$BitClass;->add(II)Lcom/zte/regex/Pattern$BitClass;

    const/4 p0, 0x0

    return-object p0

    .line 2008
    :cond_1
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->single(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0
.end method

.method private c()I
    .locals 2

    .line 2585
    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v1, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-ge v0, v1, :cond_0

    .line 2586
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result p0

    xor-int/lit8 p0, p0, 0x40

    return p0

    .line 2588
    :cond_0
    const-string v0, "Illegal control escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method private clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 13

    .line 1880
    new-instance v0, Lcom/zte/regex/Pattern$BitClass;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$BitClass;-><init>()V

    .line 1884
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v1

    const/16 v2, 0x5e

    const/16 v3, 0x5b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v1, v2, :cond_0

    .line 1887
    iget-object v2, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v7, p0, Lcom/zte/regex/Pattern;->cursor:I

    sub-int/2addr v7, v4

    aget v2, v2, v7

    if-ne v2, v3, :cond_0

    .line 1888
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v1

    move v8, v4

    move-object v2, v5

    move-object v9, v2

    move v7, v6

    goto :goto_0

    :cond_0
    move-object v2, v5

    move-object v9, v2

    move v7, v6

    move v8, v7

    :goto_0
    if-eqz v1, :cond_14

    const/16 v10, 0x5d

    const/16 v11, 0x26

    if-eq v1, v11, :cond_9

    if-eq v1, v3, :cond_7

    if-eq v1, v10, :cond_1

    goto/16 :goto_6

    :cond_1
    if-nez v2, :cond_2

    if-eqz v7, :cond_15

    :cond_2
    if-eqz p1, :cond_3

    .line 1954
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 1958
    invoke-interface {v2, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    if-eqz v8, :cond_6

    .line 1960
    invoke-interface {v0}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0

    .line 1894
    :cond_7
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v9

    if-nez v2, :cond_8

    move-object v2, v9

    goto :goto_2

    .line 1898
    :cond_8
    invoke-interface {v2, v9}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    move-object v2, v1

    .line 1899
    :goto_2
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v1

    goto :goto_0

    .line 1902
    :cond_9
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v1

    if-ne v1, v11, :cond_13

    .line 1904
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v1

    move-object v12, v5

    :goto_3
    if-eq v1, v10, :cond_d

    if-eq v1, v11, :cond_d

    if-ne v1, v3, :cond_b

    if-nez v12, :cond_a

    .line 1909
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    goto :goto_4

    .line 1911
    :cond_a
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    goto :goto_4

    .line 1913
    :cond_b
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    if-nez v12, :cond_c

    .line 1915
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    goto :goto_4

    .line 1917
    :cond_c
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    :goto_4
    move-object v12, v1

    .line 1920
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v1

    goto :goto_3

    :cond_d
    if-eqz v7, :cond_f

    if-nez v2, :cond_e

    move-object v2, v0

    move-object v9, v2

    goto :goto_5

    .line 1927
    :cond_e
    invoke-interface {v2, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    :goto_5
    move v7, v6

    :cond_f
    if-eqz v12, :cond_10

    move-object v9, v12

    :cond_10
    if-nez v2, :cond_12

    if-eqz v12, :cond_11

    move-object v2, v12

    goto/16 :goto_0

    .line 1935
    :cond_11
    const-string p1, "Bad class syntax"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1939
    :cond_12
    invoke-interface {v2, v9}, Lcom/zte/regex/Pattern$CharPredicate;->and(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    goto/16 :goto_0

    .line 1943
    :cond_13
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    goto :goto_6

    .line 1948
    :cond_14
    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v9, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-ge v1, v9, :cond_19

    .line 1967
    :cond_15
    :goto_6
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->range(Lcom/zte/regex/Pattern$BitClass;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v9

    if-nez v9, :cond_16

    move v7, v4

    goto :goto_7

    :cond_16
    if-nez v2, :cond_17

    move-object v2, v9

    goto :goto_7

    :cond_17
    if-eq v2, v9, :cond_18

    .line 1974
    invoke-interface {v2, v9}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    .line 1976
    :cond_18
    :goto_7
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v1

    goto/16 :goto_0

    .line 1949
    :cond_19
    const-string p1, "Unclosed character class"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method private closure(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;
    .locals 8

    .line 2529
    const-string v0, "Illegal repetition range"

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    const/16 v2, 0x2b

    const/4 v4, 0x1

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_9

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    return-object p1

    .line 2538
    :cond_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->skip()I

    move-result v1

    .line 2539
    invoke-static {v1}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :cond_1
    const/16 v5, 0xa

    .line 2543
    :try_start_0
    invoke-static {v2, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    add-int/lit8 v1, v1, -0x30

    invoke-static {v2, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 2545
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1

    invoke-static {v1}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2c

    const/16 v7, 0x7d

    if-ne v1, v6, :cond_3

    .line 2547
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 2549
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 2550
    invoke-direct {p0, p1, v2}, Lcom/zte/regex/Pattern;->curly(Lcom/zte/regex/Pattern$Node;I)Lcom/zte/regex/Pattern$Node;

    move-result-object p0

    return-object p0

    .line 2553
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2554
    invoke-static {v3, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    add-int/lit8 v1, v1, -0x30

    invoke-static {v3, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 2556
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v3, v2

    :cond_4
    if-ne v1, v7, :cond_7

    if-lt v3, v2, :cond_6

    .line 2569
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    if-nez v2, :cond_5

    if-ne v3, v4, :cond_5

    .line 2571
    new-instance v0, Lcom/zte/regex/Pattern$Ques;

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->qtype()Lcom/zte/regex/Pattern$Qtype;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/zte/regex/Pattern$Ques;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Qtype;)V

    goto :goto_1

    .line 2572
    :cond_5
    new-instance v0, Lcom/zte/regex/Pattern$Curly;

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->qtype()Lcom/zte/regex/Pattern$Qtype;

    move-result-object p0

    invoke-direct {v0, p1, v2, v3, p0}, Lcom/zte/regex/Pattern$Curly;-><init>(Lcom/zte/regex/Pattern$Node;IILcom/zte/regex/Pattern$Qtype;)V

    :goto_1
    return-object v0

    .line 2568
    :cond_6
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2566
    :cond_7
    const-string p1, "Unclosed counted closure"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2563
    :catch_0
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2574
    :cond_8
    const-string p1, "Illegal repetition"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2532
    :cond_9
    new-instance v0, Lcom/zte/regex/Pattern$Ques;

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->qtype()Lcom/zte/regex/Pattern$Qtype;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/zte/regex/Pattern$Ques;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Qtype;)V

    return-object v0

    .line 2536
    :cond_a
    invoke-direct {p0, p1, v4}, Lcom/zte/regex/Pattern;->curly(Lcom/zte/regex/Pattern$Node;I)Lcom/zte/regex/Pattern$Node;

    move-result-object p0

    return-object p0

    .line 2534
    :cond_b
    invoke-direct {p0, p1, v3}, Lcom/zte/regex/Pattern;->curly(Lcom/zte/regex/Pattern$Node;I)Lcom/zte/regex/Pattern$Node;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;
    .locals 2

    .line 317
    new-instance v0, Lcom/zte/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Lcom/zte/regex/Pattern;
    .locals 1

    .line 343
    new-instance v0, Lcom/zte/regex/Pattern;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private compile()V
    .locals 7

    const/16 v0, 0x80

    .line 992
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/regex/Pattern;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/regex/Pattern;->normalizedPattern:Ljava/lang/String;

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/regex/Pattern;->normalizedPattern:Ljava/lang/String;

    .line 997
    :goto_0
    iget-object v0, p0, Lcom/zte/regex/Pattern;->normalizedPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/zte/regex/Pattern;->patternLength:I

    add-int/lit8 v0, v0, 0x2

    .line 1001
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    const/4 v0, 0x0

    .line 1003
    iput-boolean v0, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    move v2, v0

    move v3, v2

    .line 1006
    :goto_1
    iget v4, p0, Lcom/zte/regex/Pattern;->patternLength:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 1007
    iget-object v4, p0, Lcom/zte/regex/Pattern;->normalizedPattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 1008
    invoke-static {v4}, Lcom/zte/regex/Pattern;->isSupplementary(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1009
    iput-boolean v5, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    .line 1011
    :cond_1
    iget-object v5, p0, Lcom/zte/regex/Pattern;->temp:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    .line 1006
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v6

    goto :goto_1

    .line 1014
    :cond_2
    iput v3, p0, Lcom/zte/regex/Pattern;->patternLength:I

    .line 1016
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1017
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->RemoveQEQuoting()V

    :cond_3
    const/16 v2, 0x20

    .line 1020
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/zte/regex/Pattern;->buffer:[I

    const/16 v2, 0xa

    .line 1021
    new-array v3, v2, [Lcom/zte/regex/Pattern$GroupHead;

    iput-object v3, p0, Lcom/zte/regex/Pattern;->groupNodes:[Lcom/zte/regex/Pattern$GroupHead;

    const/4 v3, 0x0

    .line 1022
    iput-object v3, p0, Lcom/zte/regex/Pattern;->namedGroups:Ljava/util/Map;

    .line 1023
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    .line 1025
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1027
    iget-object v1, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v2, p0, Lcom/zte/regex/Pattern;->patternLength:I

    iget-boolean v4, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    invoke-direct {p0, v1, v2, v4}, Lcom/zte/regex/Pattern;->newSlice([IIZ)Lcom/zte/regex/Pattern$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    .line 1028
    sget-object v2, Lcom/zte/regex/Pattern;->lastAccept:Lcom/zte/regex/Pattern$Node;

    iput-object v2, v1, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    goto :goto_2

    .line 1031
    :cond_4
    sget-object v1, Lcom/zte/regex/Pattern;->lastAccept:Lcom/zte/regex/Pattern$Node;

    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    .line 1033
    iget v1, p0, Lcom/zte/regex/Pattern;->patternLength:I

    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    if-eq v1, v2, :cond_6

    .line 1034
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_5

    .line 1035
    const-string v0, "Unmatched closing \')\'"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1037
    :cond_5
    const-string v0, "Unexpected internal error"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1043
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    instance-of v2, v1, Lcom/zte/regex/Pattern$Slice;

    if-eqz v2, :cond_8

    .line 1044
    invoke-static {v1}, Lcom/zte/regex/Pattern$BnM;->optimize(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 1045
    iget-object v2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    if-ne v1, v2, :cond_c

    .line 1046
    iget-boolean v1, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/zte/regex/Pattern$StartS;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v2}, Lcom/zte/regex/Pattern$StartS;-><init>(Lcom/zte/regex/Pattern$Node;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/zte/regex/Pattern$Start;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v2}, Lcom/zte/regex/Pattern$Start;-><init>(Lcom/zte/regex/Pattern$Node;)V

    :goto_3
    iput-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    goto :goto_6

    .line 1048
    :cond_8
    instance-of v2, v1, Lcom/zte/regex/Pattern$Begin;

    if-nez v2, :cond_b

    instance-of v2, v1, Lcom/zte/regex/Pattern$First;

    if-eqz v2, :cond_9

    goto :goto_5

    .line 1051
    :cond_9
    iget-boolean v1, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    if-eqz v1, :cond_a

    new-instance v1, Lcom/zte/regex/Pattern$StartS;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v2}, Lcom/zte/regex/Pattern$StartS;-><init>(Lcom/zte/regex/Pattern$Node;)V

    goto :goto_4

    :cond_a
    new-instance v1, Lcom/zte/regex/Pattern$Start;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v1, v2}, Lcom/zte/regex/Pattern$Start;-><init>(Lcom/zte/regex/Pattern$Node;)V

    :goto_4
    iput-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    goto :goto_6

    .line 1049
    :cond_b
    :goto_5
    iput-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 1058
    :cond_c
    :goto_6
    iget-boolean v1, p0, Lcom/zte/regex/Pattern;->hasGroupRef:Z

    if-nez v1, :cond_e

    .line 1059
    iget-object v1, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/regex/Pattern$Node;

    .line 1060
    instance-of v4, v2, Lcom/zte/regex/Pattern$Loop;

    if-eqz v4, :cond_d

    .line 1062
    check-cast v2, Lcom/zte/regex/Pattern$Loop;

    iget v4, p0, Lcom/zte/regex/Pattern;->localTCNCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/zte/regex/Pattern;->localTCNCount:I

    iput v4, v2, Lcom/zte/regex/Pattern$Loop;->posIndex:I

    goto :goto_7

    .line 1068
    :cond_e
    iput-object v3, p0, Lcom/zte/regex/Pattern;->temp:[I

    .line 1069
    iput-object v3, p0, Lcom/zte/regex/Pattern;->buffer:[I

    .line 1070
    iput-object v3, p0, Lcom/zte/regex/Pattern;->groupNodes:[Lcom/zte/regex/Pattern$GroupHead;

    .line 1071
    iput v0, p0, Lcom/zte/regex/Pattern;->patternLength:I

    .line 1072
    iput-boolean v5, p0, Lcom/zte/regex/Pattern;->compiled:Z

    .line 1073
    iput-object v3, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    return-void
.end method

.method private static composeOneStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 898
    invoke-static {p0, v1, v0}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 899
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 900
    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 904
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final countChars(Ljava/lang/CharSequence;II)I
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2696
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2700
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p2, :cond_3

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_2

    if-ge v1, p2, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 2705
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v3, v0, :cond_1

    .line 2706
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v2, p1

    return v2

    :cond_3
    if-nez p1, :cond_4

    return v1

    :cond_4
    neg-int p2, p2

    move v0, p1

    :goto_2
    if-lez v0, :cond_6

    if-ge v1, p2, :cond_6

    add-int/lit8 v2, v0, -0x1

    .line 2720
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v3, v0, -0x2

    .line 2721
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sub-int/2addr p1, v0

    return p1
.end method

.method private static final countCodePoints(Ljava/lang/CharSequence;)I
    .locals 5

    .line 2730
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 2734
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v3, v0, :cond_0

    .line 2735
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method private createGroup(Z)Lcom/zte/regex/Pattern$Node;
    .locals 4

    .line 2396
    iget v0, p0, Lcom/zte/regex/Pattern;->localCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->localCount:I

    if-nez p1, :cond_0

    .line 2399
    iget v1, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2400
    :goto_0
    new-instance v2, Lcom/zte/regex/Pattern$GroupHead;

    invoke-direct {v2, v0}, Lcom/zte/regex/Pattern$GroupHead;-><init>(I)V

    .line 2401
    new-instance v3, Lcom/zte/regex/Pattern$GroupTail;

    invoke-direct {v3, v0, v1}, Lcom/zte/regex/Pattern$GroupTail;-><init>(II)V

    iput-object v3, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2404
    move-object v0, v3

    check-cast v0, Lcom/zte/regex/Pattern$GroupTail;

    iput-object v3, v2, Lcom/zte/regex/Pattern$GroupHead;->tail:Lcom/zte/regex/Pattern$GroupTail;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    if-ge v1, p1, :cond_1

    .line 2407
    iget-object p0, p0, Lcom/zte/regex/Pattern;->groupNodes:[Lcom/zte/regex/Pattern$GroupHead;

    aput-object v2, p0, v1

    :cond_1
    return-object v2
.end method

.method private curly(Lcom/zte/regex/Pattern$Node;I)Lcom/zte/regex/Pattern$Node;
    .locals 2

    .line 2512
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->qtype()Lcom/zte/regex/Pattern$Qtype;

    move-result-object p0

    .line 2513
    sget-object v0, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    if-ne p0, v0, :cond_1

    .line 2514
    instance-of v0, p1, Lcom/zte/regex/Pattern$BmpCharProperty;

    if-eqz v0, :cond_0

    .line 2515
    new-instance p0, Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;

    check-cast p1, Lcom/zte/regex/Pattern$BmpCharProperty;

    invoke-direct {p0, p1, p2}, Lcom/zte/regex/Pattern$BmpCharPropertyGreedy;-><init>(Lcom/zte/regex/Pattern$BmpCharProperty;I)V

    return-object p0

    .line 2516
    :cond_0
    instance-of v0, p1, Lcom/zte/regex/Pattern$CharProperty;

    if-eqz v0, :cond_1

    .line 2517
    new-instance p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;

    check-cast p1, Lcom/zte/regex/Pattern$CharProperty;

    invoke-direct {p0, p1, p2}, Lcom/zte/regex/Pattern$CharPropertyGreedy;-><init>(Lcom/zte/regex/Pattern$CharProperty;I)V

    return-object p0

    .line 2520
    :cond_1
    new-instance v0, Lcom/zte/regex/Pattern$Curly;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/zte/regex/Pattern$Curly;-><init>(Lcom/zte/regex/Pattern$Node;IILcom/zte/regex/Pattern$Qtype;)V

    return-object v0
.end method

.method private cursor()I
    .locals 0

    .line 2640
    iget p0, p0, Lcom/zte/regex/Pattern;->cursor:I

    return p0
.end method

.method private error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;
    .locals 2

    .line 1276
    new-instance v0, Lcom/zte/regex/PatternSyntaxException;

    iget-object v1, p0, Lcom/zte/regex/Pattern;->normalizedPattern:Ljava/lang/String;

    iget p0, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/zte/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private escape(ZZZ)I
    .locals 4

    .line 1636
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->skip()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x1

    const/16 v3, 0x100

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v0

    :pswitch_0
    if-nez p1, :cond_21

    if-eqz p2, :cond_0

    .line 1862
    new-instance p1, Lcom/zte/regex/Pattern$End;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$End;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_0
    return v1

    .line 1857
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->x()I

    move-result p0

    return p0

    :pswitch_2
    if-eqz p2, :cond_2

    .line 1850
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1851
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WORD()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_WORD()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_2

    .line 1853
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_2
    return v1

    :pswitch_3
    if-eqz p3, :cond_3

    const/16 p0, 0xb

    return p0

    :cond_3
    if-eqz p2, :cond_4

    .line 1843
    invoke-static {}, Lcom/zte/regex/Pattern;->VertWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_4

    .line 1845
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_4
    return v1

    .line 1830
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->u()I

    move-result p0

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    if-eqz p2, :cond_6

    .line 1821
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1822
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WHITE_SPACE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_SPACE()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_6

    .line 1824
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_6
    return v1

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_9
    if-nez p1, :cond_21

    .line 1795
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result p1

    const/16 p3, 0x3c

    if-ne p1, p3, :cond_a

    .line 1797
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->groupname(I)Ljava/lang/String;

    move-result-object p1

    .line 1798
    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz p2, :cond_8

    .line 1801
    iput-boolean v2, p0, Lcom/zte/regex/Pattern;->hasGroupRef:Z

    const/4 p2, 0x2

    .line 1802
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1803
    new-instance p2, Lcom/zte/regex/Pattern$CIBackRef;

    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p3, 0x40

    invoke-direct {p0, p3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/zte/regex/Pattern$CIBackRef;-><init>(IZ)V

    iput-object p2, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    goto :goto_2

    .line 1805
    :cond_7
    new-instance p2, Lcom/zte/regex/Pattern$BackRef;

    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/zte/regex/Pattern$BackRef;-><init>(I)V

    iput-object p2, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_8
    :goto_2
    return v1

    .line 1799
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "named capturing group <"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "> does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1796
    :cond_a
    const-string p1, "\\k is not followed by \'<\' for named capturing group"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    :pswitch_a
    if-eqz p2, :cond_b

    .line 1784
    invoke-static {}, Lcom/zte/regex/Pattern;->HorizWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_b

    .line 1786
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_b
    return v1

    :pswitch_b
    const/16 p0, 0xc

    return p0

    :pswitch_c
    const/16 p0, 0x1b

    return p0

    :pswitch_d
    if-eqz p2, :cond_d

    .line 1770
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1771
    invoke-static {}, Lcom/zte/regex/CharPredicates;->DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_DIGIT()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_d

    .line 1773
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_d
    return v1

    .line 1767
    :pswitch_e
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->c()I

    move-result p0

    return p0

    :pswitch_f
    if-nez p1, :cond_21

    if-eqz p2, :cond_10

    .line 1753
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result p1

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_f

    .line 1754
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->skip()I

    move-result p1

    const/16 p2, 0x67

    if-ne p1, p2, :cond_e

    .line 1755
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result p1

    const/16 p2, 0x7d

    if-ne p1, p2, :cond_21

    .line 1756
    new-instance p1, Lcom/zte/regex/Pattern$GraphemeBound;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$GraphemeBound;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return v1

    .line 1761
    :cond_e
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 1763
    :cond_f
    new-instance p1, Lcom/zte/regex/Pattern$Bound;

    sget p2, Lcom/zte/regex/Pattern$Bound;->BOTH:I

    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/zte/regex/Pattern$Bound;-><init>(IZ)V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_10
    return v1

    :pswitch_10
    const/4 p0, 0x7

    return p0

    :pswitch_11
    if-nez p1, :cond_21

    if-eqz p2, :cond_12

    .line 1742
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_11

    .line 1743
    new-instance p1, Lcom/zte/regex/Pattern$UnixDollar;

    invoke-direct {p1, p2}, Lcom/zte/regex/Pattern$UnixDollar;-><init>(Z)V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    goto :goto_4

    .line 1745
    :cond_11
    new-instance p1, Lcom/zte/regex/Pattern$Dollar;

    invoke-direct {p1, p2}, Lcom/zte/regex/Pattern$Dollar;-><init>(Z)V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_12
    :goto_4
    return v1

    :pswitch_12
    if-nez p1, :cond_21

    if-eqz p2, :cond_13

    .line 1734
    new-instance p1, Lcom/zte/regex/Pattern$XGrapheme;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$XGrapheme;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_13
    return v1

    :pswitch_13
    if-eqz p2, :cond_15

    .line 1724
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1725
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WORD()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_5

    :cond_14
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_WORD()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_5
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    .line 1726
    invoke-interface {p2}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_15

    .line 1728
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_15
    return v1

    :pswitch_14
    if-eqz p2, :cond_16

    .line 1717
    invoke-static {}, Lcom/zte/regex/Pattern;->VertWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    invoke-interface {p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_16

    .line 1719
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_16
    return v1

    :pswitch_15
    if-eqz p2, :cond_18

    .line 1705
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1706
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WHITE_SPACE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_6

    :cond_17
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_SPACE()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_6
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    .line 1707
    invoke-interface {p2}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_18

    .line 1709
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_18
    return v1

    :pswitch_16
    if-nez p1, :cond_21

    if-eqz p2, :cond_19

    .line 1701
    new-instance p1, Lcom/zte/regex/Pattern$LineEnding;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$LineEnding;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_19
    return v1

    .line 1694
    :pswitch_17
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->N()I

    move-result p0

    return p0

    :pswitch_18
    if-eqz p2, :cond_1a

    .line 1682
    invoke-static {}, Lcom/zte/regex/Pattern;->HorizWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    invoke-interface {p2}, Lcom/zte/regex/Pattern$BmpCharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_1a

    .line 1684
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_1a
    return v1

    :pswitch_19
    if-nez p1, :cond_21

    if-eqz p2, :cond_1b

    .line 1678
    new-instance p1, Lcom/zte/regex/Pattern$LastMatch;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$LastMatch;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_1b
    return v1

    :pswitch_1a
    if-eqz p2, :cond_1d

    .line 1666
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1667
    invoke-static {}, Lcom/zte/regex/CharPredicates;->DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    goto :goto_7

    :cond_1c
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_DIGIT()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p2

    :goto_7
    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    .line 1668
    invoke-interface {p2}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    if-nez p1, :cond_1d

    .line 1670
    invoke-direct {p0, p2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_1d
    return v1

    :pswitch_1b
    if-nez p1, :cond_21

    if-eqz p2, :cond_1e

    .line 1660
    new-instance p1, Lcom/zte/regex/Pattern$Bound;

    sget p2, Lcom/zte/regex/Pattern$Bound;->NONE:I

    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/zte/regex/Pattern$Bound;-><init>(IZ)V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_1e
    return v1

    :pswitch_1c
    if-nez p1, :cond_21

    if-eqz p2, :cond_1f

    .line 1656
    new-instance p1, Lcom/zte/regex/Pattern$Begin;

    invoke-direct {p1}, Lcom/zte/regex/Pattern$Begin;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_1f
    return v1

    :pswitch_1d
    if-nez p1, :cond_21

    if-eqz p2, :cond_20

    add-int/lit8 v0, v0, -0x30

    .line 1651
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->ref(I)Lcom/zte/regex/Pattern$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    :cond_20
    return v1

    .line 1867
    :cond_21
    :pswitch_1e
    const-string p1, "Illegal/unsupported escape sequence"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1639
    :pswitch_1f
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->o()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1c
        :pswitch_1b
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_1e
        :pswitch_1e
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1e
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1e
        :pswitch_a
        :pswitch_1e
        :pswitch_1e
        :pswitch_9
        :pswitch_1e
        :pswitch_1e
        :pswitch_8
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1e
        :pswitch_0
    .end packed-switch
.end method

.method private expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 1317
    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->sequence(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v5

    .line 1318
    iget-object v6, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    if-nez v1, :cond_0

    move-object v1, v5

    move-object v4, v6

    goto :goto_3

    :cond_0
    if-nez v2, :cond_1

    .line 1325
    new-instance v2, Lcom/zte/regex/Pattern$BranchConn;

    invoke-direct {v2}, Lcom/zte/regex/Pattern$BranchConn;-><init>()V

    .line 1326
    iput-object p1, v2, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    :cond_1
    if-ne v5, p1, :cond_2

    move-object v5, v0

    goto :goto_1

    .line 1335
    :cond_2
    iput-object v2, v6, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    :goto_1
    if-ne v1, v3, :cond_3

    .line 1338
    invoke-virtual {v3, v5}, Lcom/zte/regex/Pattern$Branch;->add(Lcom/zte/regex/Pattern$Node;)V

    goto :goto_3

    :cond_3
    if-ne v1, p1, :cond_4

    move-object v1, v0

    goto :goto_2

    .line 1345
    :cond_4
    iput-object v2, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 1347
    :goto_2
    new-instance v3, Lcom/zte/regex/Pattern$Branch;

    invoke-direct {v3, v1, v5, v2}, Lcom/zte/regex/Pattern$Branch;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;)V

    move-object v1, v3

    .line 1350
    :goto_3
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v5

    const/16 v6, 0x7c

    if-eq v5, v6, :cond_5

    return-object v1

    .line 1353
    :cond_5
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    goto :goto_0
.end method

.method private family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 7

    .line 2099
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2104
    iget-object p1, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget p1, p1, v2

    .line 2105
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    int-to-char p1, p1

    .line 2106
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2108
    :cond_0
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v3, p0, Lcom/zte/regex/Pattern;->cursor:I

    invoke-direct {p1, v2, v3, v1}, Ljava/lang/String;-><init>([III)V

    .line 2110
    :goto_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    goto :goto_2

    .line 2112
    :cond_1
    iget p1, p0, Lcom/zte/regex/Pattern;->cursor:I

    const/16 v2, 0x7d

    .line 2113
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->mark(I)V

    .line 2114
    :goto_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_1

    .line 2116
    :cond_2
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->mark(I)V

    .line 2117
    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 2118
    iget v3, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-gt v2, v3, :cond_14

    add-int/lit8 v3, p1, 0x1

    if-ge v3, v2, :cond_13

    .line 2122
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/regex/Pattern;->temp:[I

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    invoke-direct {v3, v4, p1, v2}, Ljava/lang/String;-><init>([III)V

    move-object p1, v3

    :goto_2
    const/16 v2, 0x3d

    .line 2125
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_a

    add-int/lit8 v6, v2, 0x1

    .line 2128
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2129
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2130
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_3
    move v0, v3

    goto :goto_4

    :sswitch_0
    const-string v0, "general_category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x5

    goto :goto_4

    :sswitch_1
    const-string v0, "block"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_2
    const-string v0, "blk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_3
    const-string v0, "sc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_4

    :sswitch_4
    const-string v0, "gc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :sswitch_5
    const-string v2, "script"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    .line 2137
    :pswitch_0
    invoke-static {v6}, Lcom/zte/regex/CharPredicates;->forUnicodeBlock(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v5

    goto :goto_5

    .line 2141
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    invoke-static {v6, v0}, Lcom/zte/regex/CharPredicates;->forProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v5

    goto :goto_5

    .line 2133
    :pswitch_2
    invoke-static {v6}, Lcom/zte/regex/CharPredicates;->forUnicodeScript(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_9

    goto/16 :goto_8

    .line 2147
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Unicode property {name=<"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ">, value=<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ">}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2151
    :cond_a
    const-string v0, "In"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2153
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/regex/CharPredicates;->forUnicodeBlock(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    :goto_6
    move-object v5, v0

    goto :goto_7

    .line 2154
    :cond_b
    const-string v0, "Is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2156
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2157
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zte/regex/CharPredicates;->forUnicodeProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    if-nez v2, :cond_c

    .line 2159
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zte/regex/CharPredicates;->forProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_d

    .line 2161
    invoke-static {v0}, Lcom/zte/regex/CharPredicates;->forUnicodeScript(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    :cond_d
    move-object v5, v2

    goto :goto_7

    :cond_e
    const/16 v0, 0x100

    .line 2163
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2164
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/zte/regex/CharPredicates;->forPOSIXName(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v5

    :cond_f
    if-nez v5, :cond_10

    .line 2166
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/zte/regex/CharPredicates;->forProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    goto :goto_6

    :cond_10
    :goto_7
    if-eqz v5, :cond_12

    :goto_8
    if-eqz p2, :cond_11

    .line 2175
    iput-boolean v1, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    .line 2176
    invoke-interface {v5}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v5

    :cond_11
    return-object v5

    .line 2169
    :cond_12
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown character property name {"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2121
    :cond_13
    const-string p1, "Empty character family"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2119
    :cond_14
    const-string p1, "Unclosed character family"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x361a2f35 -> :sswitch_5
        0xcdc -> :sswitch_4
        0xe50 -> :sswitch_3
        0x17d61 -> :sswitch_2
        0x597c48d -> :sswitch_1
        0x4b666a75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findSupplementary(II)Z
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/zte/regex/Pattern;->isSupplementary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getClass(I)I
    .locals 0

    .line 887
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result p0

    return p0
.end method

.method private group0()Lcom/zte/regex/Pattern$Node;
    .locals 15

    .line 2217
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    .line 2218
    iget-object v1, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 2219
    iput-object v2, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2220
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v3

    const/16 v4, 0x3f

    const/16 v5, 0x29

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_d

    .line 2222
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->skip()I

    move-result v3

    const/16 v4, 0x21

    const/16 v8, 0x3d

    if-eq v3, v4, :cond_a

    const/16 v9, 0x24

    if-eq v3, v9, :cond_9

    const/16 v9, 0x3a

    if-eq v3, v9, :cond_8

    const/16 v10, 0x40

    if-eq v3, v10, :cond_9

    packed-switch v3, :pswitch_data_0

    .line 2295
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 2296
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->addFlag()V

    .line 2297
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v3

    if-ne v3, v5, :cond_0

    return-object v2

    :cond_0
    if-ne v3, v9, :cond_1

    .line 2304
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v3

    .line 2305
    iget-object v4, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2306
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v8

    iput-object v8, v3, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    goto/16 :goto_1

    .line 2302
    :cond_1
    const-string v0, "Unknown inline modifier"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2241
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v3

    .line 2242
    iget-object v4, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2243
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v4

    iput-object v4, v3, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2244
    new-instance v4, Lcom/zte/regex/Pattern$Ques;

    sget-object v8, Lcom/zte/regex/Pattern$Qtype;->INDEPENDENT:Lcom/zte/regex/Pattern$Qtype;

    invoke-direct {v4, v3, v8}, Lcom/zte/regex/Pattern$Ques;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Qtype;)V

    move-object v3, v4

    goto/16 :goto_1

    .line 2247
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v3

    if-eq v3, v8, :cond_3

    if-eq v3, v4, :cond_3

    .line 2250
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->groupname(I)Ljava/lang/String;

    move-result-object v3

    .line 2251
    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2255
    invoke-direct {p0, v7}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v4

    .line 2256
    iget-object v7, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2257
    invoke-virtual {p0}, Lcom/zte/regex/Pattern;->namedGroups()Ljava/util/Map;

    move-result-object v8

    iget v9, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    sub-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    invoke-direct {p0, v7}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v3

    iput-object v3, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    move-object v3, v4

    move v14, v6

    move-object v4, v7

    goto/16 :goto_3

    .line 2252
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Named capturing group <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> is already defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2261
    :cond_3
    iget v4, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 2262
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v9

    .line 2263
    iget-object v10, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2264
    invoke-direct {p0, v10}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v11

    iput-object v11, v9, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2265
    sget-object v11, Lcom/zte/regex/Pattern$LookBehindEndNode;->INSTANCE:Lcom/zte/regex/Pattern$LookBehindEndNode;

    iput-object v11, v10, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2266
    new-instance v10, Lcom/zte/regex/Pattern$TreeInfo;

    invoke-direct {v10}, Lcom/zte/regex/Pattern$TreeInfo;-><init>()V

    .line 2267
    invoke-virtual {v9, v10}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    .line 2268
    iget-boolean v11, v10, Lcom/zte/regex/Pattern$TreeInfo;->maxValid:Z

    if-eqz v11, :cond_7

    .line 2272
    iget v11, p0, Lcom/zte/regex/Pattern;->patternLength:I

    invoke-direct {p0, v4, v11}, Lcom/zte/regex/Pattern;->findSupplementary(II)Z

    move-result v4

    if-ne v3, v8, :cond_5

    if-eqz v4, :cond_4

    .line 2275
    new-instance v3, Lcom/zte/regex/Pattern$BehindS;

    iget v4, v10, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v8, v10, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    invoke-direct {v3, v9, v4, v8}, Lcom/zte/regex/Pattern$BehindS;-><init>(Lcom/zte/regex/Pattern$Node;II)V

    goto :goto_0

    .line 2277
    :cond_4
    new-instance v3, Lcom/zte/regex/Pattern$Behind;

    iget v4, v10, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v8, v10, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    invoke-direct {v3, v9, v4, v8}, Lcom/zte/regex/Pattern$Behind;-><init>(Lcom/zte/regex/Pattern$Node;II)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 2281
    new-instance v3, Lcom/zte/regex/Pattern$NotBehindS;

    iget v4, v10, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v8, v10, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    invoke-direct {v3, v9, v4, v8}, Lcom/zte/regex/Pattern$NotBehindS;-><init>(Lcom/zte/regex/Pattern$Node;II)V

    goto :goto_0

    .line 2283
    :cond_6
    new-instance v3, Lcom/zte/regex/Pattern$NotBehind;

    iget v4, v10, Lcom/zte/regex/Pattern$TreeInfo;->maxLength:I

    iget v8, v10, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    invoke-direct {v3, v9, v4, v8}, Lcom/zte/regex/Pattern$NotBehind;-><init>(Lcom/zte/regex/Pattern$Node;II)V

    .line 2287
    :goto_0
    iget-object v4, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 2288
    iget-object v4, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v4, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 2269
    :cond_7
    const-string v0, "Look-behind group does not have an obvious maximum length"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2225
    :cond_8
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v3

    .line 2226
    iget-object v4, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2227
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v8

    iput-object v8, v3, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    :goto_1
    move v14, v7

    goto :goto_3

    .line 2293
    :cond_9
    const-string v0, "Unknown group type"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2231
    :cond_a
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v4

    .line 2232
    iget-object v9, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2233
    invoke-direct {p0, v9}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v9

    iput-object v9, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    if-ne v3, v8, :cond_b

    .line 2235
    new-instance v3, Lcom/zte/regex/Pattern$Pos;

    invoke-direct {v3, v4}, Lcom/zte/regex/Pattern$Pos;-><init>(Lcom/zte/regex/Pattern$Node;)V

    goto :goto_2

    .line 2237
    :cond_b
    new-instance v3, Lcom/zte/regex/Pattern$Neg;

    invoke-direct {v3, v4}, Lcom/zte/regex/Pattern$Neg;-><init>(Lcom/zte/regex/Pattern$Node;)V

    :cond_c
    :goto_2
    move-object v4, v3

    goto :goto_1

    .line 2311
    :cond_d
    invoke-direct {p0, v7}, Lcom/zte/regex/Pattern;->createGroup(Z)Lcom/zte/regex/Pattern$Node;

    move-result-object v3

    .line 2312
    iget-object v4, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 2313
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->expr(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v7

    iput-object v7, v3, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    move v14, v6

    .line 2316
    :goto_3
    const-string v7, "Unclosed group"

    invoke-direct {p0, v5, v7}, Lcom/zte/regex/Pattern;->accept(ILjava/lang/String;)V

    .line 2317
    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    .line 2320
    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->closure(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v0

    if-ne v0, v3, :cond_e

    .line 2322
    iput-object v4, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    :cond_e
    if-ne v3, v4, :cond_f

    .line 2326
    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 2332
    :cond_f
    iget-object v5, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_10

    .line 2333
    iget-object v5, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2335
    :cond_10
    instance-of v1, v0, Lcom/zte/regex/Pattern$Ques;

    if-eqz v1, :cond_13

    .line 2336
    move-object v1, v0

    check-cast v1, Lcom/zte/regex/Pattern$Ques;

    .line 2337
    iget-object v5, v1, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v6, Lcom/zte/regex/Pattern$Qtype;->POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;

    if-ne v5, v6, :cond_11

    .line 2338
    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 2341
    :cond_11
    new-instance v0, Lcom/zte/regex/Pattern$BranchConn;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$BranchConn;-><init>()V

    iput-object v0, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2342
    iget-object v0, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2343
    iget-object v1, v1, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v4, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v1, v4, :cond_12

    .line 2344
    new-instance v1, Lcom/zte/regex/Pattern$Branch;

    invoke-direct {v1, v3, v2, v0}, Lcom/zte/regex/Pattern$Branch;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;)V

    goto :goto_4

    .line 2346
    :cond_12
    new-instance v1, Lcom/zte/regex/Pattern$Branch;

    invoke-direct {v1, v2, v3, v0}, Lcom/zte/regex/Pattern$Branch;-><init>(Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;Lcom/zte/regex/Pattern$Node;)V

    .line 2348
    :goto_4
    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v1

    .line 2350
    :cond_13
    instance-of v1, v0, Lcom/zte/regex/Pattern$Curly;

    if-eqz v1, :cond_18

    .line 2351
    move-object v1, v0

    check-cast v1, Lcom/zte/regex/Pattern$Curly;

    .line 2352
    iget-object v2, v1, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v5, Lcom/zte/regex/Pattern$Qtype;->POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;

    if-ne v2, v5, :cond_14

    .line 2353
    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 2357
    :cond_14
    new-instance v0, Lcom/zte/regex/Pattern$TreeInfo;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$TreeInfo;-><init>()V

    .line 2358
    invoke-virtual {v3, v0}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2359
    check-cast v4, Lcom/zte/regex/Pattern$GroupTail;

    .line 2360
    new-instance v0, Lcom/zte/regex/Pattern$GroupCurly;

    iget-object v8, v3, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    iget v9, v1, Lcom/zte/regex/Pattern$Curly;->cmin:I

    iget v10, v1, Lcom/zte/regex/Pattern$Curly;->cmax:I

    iget-object v11, v1, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    iget v12, v4, Lcom/zte/regex/Pattern$GroupTail;->localIndex:I

    iget v13, v4, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/zte/regex/Pattern$GroupCurly;-><init>(Lcom/zte/regex/Pattern$Node;IILcom/zte/regex/Pattern$Qtype;IIZ)V

    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 2367
    :cond_15
    move-object v0, v3

    check-cast v0, Lcom/zte/regex/Pattern$GroupHead;

    iget v0, v0, Lcom/zte/regex/Pattern$GroupHead;->localIndex:I

    .line 2369
    iget-object v2, v1, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    sget-object v5, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    if-ne v2, v5, :cond_16

    .line 2370
    new-instance v2, Lcom/zte/regex/Pattern$Loop;

    iget v5, p0, Lcom/zte/regex/Pattern;->localCount:I

    invoke-direct {v2, v5, v0}, Lcom/zte/regex/Pattern$Loop;-><init>(II)V

    .line 2372
    iget v0, v1, Lcom/zte/regex/Pattern$Curly;->cmax:I

    const v5, 0x7fffffff

    if-ne v0, v5, :cond_17

    .line 2373
    iget-object v0, p0, Lcom/zte/regex/Pattern;->topClosureNodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2375
    :cond_16
    new-instance v2, Lcom/zte/regex/Pattern$LazyLoop;

    iget v5, p0, Lcom/zte/regex/Pattern;->localCount:I

    invoke-direct {v2, v5, v0}, Lcom/zte/regex/Pattern$LazyLoop;-><init>(II)V

    .line 2377
    :cond_17
    :goto_5
    new-instance v0, Lcom/zte/regex/Pattern$Prolog;

    invoke-direct {v0, v2}, Lcom/zte/regex/Pattern$Prolog;-><init>(Lcom/zte/regex/Pattern$Loop;)V

    .line 2378
    iget v5, p0, Lcom/zte/regex/Pattern;->localCount:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/zte/regex/Pattern;->localCount:I

    .line 2379
    iget v5, v1, Lcom/zte/regex/Pattern$Curly;->cmin:I

    iput v5, v2, Lcom/zte/regex/Pattern$Loop;->cmin:I

    .line 2380
    iget v1, v1, Lcom/zte/regex/Pattern$Curly;->cmax:I

    iput v1, v2, Lcom/zte/regex/Pattern$Loop;->cmax:I

    .line 2381
    iput-object v3, v2, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    .line 2382
    iput-object v2, v4, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 2383
    iput-object v2, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 2387
    :cond_18
    const-string v0, "Internal logic error"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private groupname(I)Ljava/lang/String;
    .locals 2

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2198
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    int-to-char p1, p1

    .line 2201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2202
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result p1

    invoke-static {p1}, Lcom/zte/regex/ASCII;->isAlnum(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_1

    .line 2205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2204
    :cond_1
    const-string p1, "named capturing group is missing trailing \'>\'"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2199
    :cond_2
    const-string p1, "capturing group name does not start with a Latin letter"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method private has(I)Z
    .locals 0

    .line 1115
    iget p0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasBaseCharacter(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 4663
    iget-boolean v0, p0, Lcom/zte/regex/Matcher;->transparentBounds:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4664
    iget p0, p0, Lcom/zte/regex/Matcher;->from:I

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-lt p1, p0, :cond_2

    .line 4666
    invoke-static {p2, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4667
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4669
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static inRange(III)Z
    .locals 0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLineSeparator(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 1244
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz p0, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eq p1, v2, :cond_3

    const/16 p0, 0xd

    if-eq p1, p0, :cond_3

    or-int/lit8 p0, p1, 0x1

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_3

    const/16 p0, 0x85

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method private static final isSupplementary(I)Z
    .locals 1

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    int-to-char p0, p0

    .line 1297
    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$ALL$3(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$CIRange$12(III)Z
    .locals 1

    .line 5001
    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5002
    invoke-static {p2}, Lcom/zte/regex/ASCII;->isAscii(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5003
    invoke-static {p2}, Lcom/zte/regex/ASCII;->toUpper(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5004
    invoke-static {p2}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result p2

    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$CIRangeU$13(III)Z
    .locals 2

    .line 5009
    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5011
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 5012
    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5013
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic lambda$DOT$4(I)Z
    .locals 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    or-int/lit8 v0, p0, 0x1

    const/16 v1, 0x2029

    if-eq v0, v1, :cond_0

    const/16 v0, 0x85

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$HorizWS$2(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x200a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x202f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$Range$10(III)Z
    .locals 0

    .line 4993
    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$Range$11(III)Z
    .locals 0

    .line 4994
    invoke-static {p0, p2, p1}, Lcom/zte/regex/Pattern;->inRange(III)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$Single$7(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$SingleI$8(III)Z
    .locals 0

    if-eq p2, p0, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$SingleS$6(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$SingleU$9(II)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 4979
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$UNIXDOT$5(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$VertWS$1(I)Z
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x85

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$normalizeSlice$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 770
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x7c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private mark(I)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget p0, p0, Lcom/zte/regex/Pattern;->patternLength:I

    aput p1, v0, p0

    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 422
    invoke-static {p0}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object p0

    .line 423
    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2184
    :cond_0
    instance-of v0, p1, Lcom/zte/regex/Pattern$BmpCharPredicate;

    if-eqz v0, :cond_1

    .line 2185
    new-instance p0, Lcom/zte/regex/Pattern$BmpCharProperty;

    check-cast p1, Lcom/zte/regex/Pattern$BmpCharPredicate;

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$BmpCharProperty;-><init>(Lcom/zte/regex/Pattern$BmpCharPredicate;)V

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 2187
    iput-boolean v0, p0, Lcom/zte/regex/Pattern;->hasSupplementary:Z

    .line 2188
    new-instance p0, Lcom/zte/regex/Pattern$CharProperty;

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$CharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    return-object p0
.end method

.method private newSlice([IIZ)Lcom/zte/regex/Pattern$Node;
    .locals 3

    .line 2777
    new-array v0, p2, [I

    const/4 v1, 0x2

    .line 2778
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    .line 2779
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    if-ge v2, p2, :cond_0

    .line 2781
    aget p0, p1, v2

    .line 2782
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    .line 2781
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p0

    aput p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 2784
    new-instance p0, Lcom/zte/regex/Pattern$SliceUS;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$SliceUS;-><init>([I)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/zte/regex/Pattern$SliceU;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$SliceU;-><init>([I)V

    :goto_1
    return-object p0

    :cond_2
    :goto_2
    if-ge v2, p2, :cond_3

    .line 2787
    aget p0, p1, v2

    invoke-static {p0}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result p0

    aput p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 2789
    new-instance p0, Lcom/zte/regex/Pattern$SliceIS;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$SliceIS;-><init>([I)V

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/zte/regex/Pattern$SliceI;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$SliceI;-><init>([I)V

    :goto_3
    return-object p0

    :cond_5
    :goto_4
    if-ge v2, p2, :cond_6

    .line 2792
    aget p0, p1, v2

    aput p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_7

    .line 2794
    new-instance p0, Lcom/zte/regex/Pattern$SliceS;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$SliceS;-><init>([I)V

    goto :goto_5

    :cond_7
    new-instance p0, Lcom/zte/regex/Pattern$Slice;

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern$Slice;-><init>([I)V

    :goto_5
    return-object p0
.end method

.method private next()I
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    const/4 v1, 0x4

    .line 1171
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->peekPastWhitespace(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private nextEscaped()I
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget p0, v0, v1

    return p0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 698
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v0, :cond_5

    .line 704
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-nez v4, :cond_0

    if-ne v7, v8, :cond_0

    add-int/lit8 v9, v3, 0x1

    if-ge v9, v0, :cond_0

    .line 706
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_0

    add-int/lit8 v3, v3, 0x2

    move v6, v2

    goto :goto_0

    :cond_0
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_3

    if-eq v6, v8, :cond_3

    if-nez v4, :cond_2

    if-ge v5, v3, :cond_1

    .line 713
    invoke-static {p0, v5, v3, v1}, Lcom/zte/regex/Pattern;->normalizeSlice(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    :cond_1
    move v5, v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_1

    :cond_3
    const/16 v9, 0x5d

    if-ne v7, v9, :cond_4

    if-eq v6, v8, :cond_4

    add-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    if-nez v4, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 720
    invoke-static {p0, v5, v6, v1}, Lcom/zte/regex/Pattern;->normalizeClazz(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v5, v6

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_0

    :cond_5
    if-ge v5, v0, :cond_6

    .line 729
    invoke-static {p0, v5, v0, v1}, Lcom/zte/regex/Pattern;->normalizeSlice(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 730
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeClazz(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 0

    .line 789
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static normalizeSlice(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 8

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 738
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/zte/regex/ASCII;->isAscii(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p2, :cond_1

    .line 742
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    goto :goto_2

    .line 749
    :cond_2
    invoke-virtual {p3, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_1
    move p1, v0

    :goto_2
    if-ge p1, p2, :cond_7

    .line 751
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 752
    const-string v2, ".$|()[]{}^?*+\\"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_3

    int-to-char v0, v0

    .line 753
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 757
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/zte/regex/Grapheme;->nextBoundary(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 759
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 760
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    const-string v5, ")"

    const-string v6, "(?:"

    const/4 v7, 0x1

    if-le v3, v7, :cond_4

    .line 763
    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 764
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 765
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 766
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 767
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-static {v2, v3}, Lcom/zte/regex/Pattern;->produceEquivalentAlternation(Ljava/lang/String;Ljava/util/Set;)V

    .line 769
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    new-instance p1, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 771
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p3, p1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 776
    :cond_4
    sget-object v3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "|"

    if-nez v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 779
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 782
    :cond_6
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private o()I
    .locals 5

    .line 2595
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v0

    add-int/lit8 v1, v0, -0x30

    rsub-int/lit8 v2, v0, 0x37

    or-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 2597
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v2

    add-int/lit8 v3, v2, -0x30

    rsub-int/lit8 v2, v2, 0x37

    or-int/2addr v2, v3

    if-ltz v2, :cond_1

    .line 2599
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v2

    add-int/lit8 v4, v2, -0x30

    rsub-int/lit8 v2, v2, 0x37

    or-int/2addr v2, v4

    if-ltz v2, :cond_0

    rsub-int/lit8 v0, v0, 0x33

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    mul-int/lit8 v1, v1, 0x40

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    return v1

    .line 2603
    :cond_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    return v1

    .line 2606
    :cond_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    return v1

    .line 2609
    :cond_2
    const-string v0, "Illegal octal escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method private parsePastLine()I
    .locals 3

    .line 1216
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->isLineSeparator(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1219
    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v2, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-le v1, v2, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v2

    :cond_1
    return v0
.end method

.method private parsePastWhitespace(I)I
    .locals 3

    .line 1203
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isSpace(I)Z

    move-result v0

    const/16 v1, 0x23

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    return p1

    .line 1204
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isSpace(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1205
    iget-object p1, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget p1, p1, v0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_0

    .line 1207
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->parsePastLine()I

    move-result p1

    goto :goto_0
.end method

.method private peek()I
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    const/4 v1, 0x4

    .line 1142
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->peekPastWhitespace(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private peekPastLine()I
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 1231
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->isLineSeparator(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1233
    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v2, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-le v1, v2, :cond_1

    .line 1234
    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 1235
    iget-object p0, p0, Lcom/zte/regex/Pattern;->temp:[I

    aget v0, p0, v2

    :cond_1
    return v0
.end method

.method private peekPastWhitespace(I)I
    .locals 2

    .line 1189
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isSpace(I)Z

    move-result v0

    const/16 v1, 0x23

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    return p1

    .line 1190
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isSpace(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    iget-object p1, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget p1, p1, v0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_0

    .line 1193
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peekPastLine()I

    move-result p1

    goto :goto_0
.end method

.method private static produceEquivalentAlternation(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 800
    invoke-static {p0, v1, v0}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 801
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 802
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 805
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 807
    invoke-static {p0}, Lcom/zte/regex/Pattern;->producePermutations(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 809
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-static {v0}, Lcom/zte/regex/Pattern;->composeOneStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 814
    invoke-static {v0, p1}, Lcom/zte/regex/Pattern;->produceEquivalentAlternation(Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static producePermutations(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 829
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 830
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    return-object v1

    .line 832
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    invoke-static {v0, v2, v4}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 833
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 834
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 835
    invoke-static {v5}, Lcom/zte/regex/Pattern;->getClass(I)I

    move-result v6

    invoke-static {v1}, Lcom/zte/regex/Pattern;->getClass(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 836
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    return-object v1

    .line 838
    :cond_1
    new-array v6, v4, [Ljava/lang/String;

    .line 839
    aput-object v0, v6, v2

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 841
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    return-object v6

    .line 848
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/zte/regex/Pattern;->countCodePoints(Ljava/lang/CharSequence;)I

    move-result v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_3

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v5, v4

    goto :goto_0

    .line 852
    :cond_3
    new-array v4, v5, [Ljava/lang/String;

    .line 854
    new-array v5, v1, [I

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, v1, :cond_4

    .line 856
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 857
    invoke-static {v8}, Lcom/zte/regex/Pattern;->getClass(I)I

    move-result v9

    aput v9, v5, v6

    .line 858
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v2

    move v7, v6

    move v8, v7

    :goto_2
    if-ge v6, v1, :cond_8

    .line 867
    invoke-static {v0, v8, v3}, Lcom/zte/regex/Pattern;->countChars(Ljava/lang/CharSequence;II)I

    move-result v9

    add-int/lit8 v10, v6, -0x1

    :goto_3
    if-ltz v10, :cond_6

    .line 869
    aget v11, v5, v10

    aget v12, v5, v6

    if-ne v11, v12, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 873
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v11, v8, v9

    .line 874
    invoke-virtual {v10, v8, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 875
    invoke-static {v10}, Lcom/zte/regex/Pattern;->producePermutations(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 877
    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 878
    array-length v12, v10

    move v13, v2

    :goto_4
    if-ge v13, v12, :cond_7

    aget-object v14, v10, v13

    add-int/lit8 v15, v7, 0x1

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    add-int/lit8 v13, v13, 0x1

    move v7, v15

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v8, v9

    const/4 v3, 0x1

    goto :goto_2

    .line 881
    :cond_8
    new-array v0, v7, [Ljava/lang/String;

    .line 882
    invoke-static {v4, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private qtype()Lcom/zte/regex/Pattern$Qtype;
    .locals 2

    .line 2500
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 2502
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 2503
    sget-object p0, Lcom/zte/regex/Pattern$Qtype;->LAZY:Lcom/zte/regex/Pattern$Qtype;

    return-object p0

    :cond_0
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    .line 2505
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 2506
    sget-object p0, Lcom/zte/regex/Pattern$Qtype;->POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;

    return-object p0

    .line 2508
    :cond_1
    sget-object p0, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    return-object p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 601
    const-string v0, "\\E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 602
    const-string v2, "\\Q"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 605
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x7ffffff7

    sub-int v6, v5, v4

    if-ge v4, v6, :cond_1

    shl-int/lit8 v5, v4, 0x1

    .line 609
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 610
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 613
    :cond_2
    invoke-virtual {v4, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\\E\\\\E\\Q"

    .line 614
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x2

    .line 616
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private range(Lcom/zte/regex/Pattern$BitClass;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 7

    .line 2041
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_5

    .line 2043
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->nextEscaped()I

    move-result v0

    const/16 v5, 0x70

    const/16 v6, 0x50

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_0

    goto :goto_1

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v5, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/2addr v5, v3

    aget v0, v0, v5

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2056
    :goto_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 2057
    invoke-direct {p0, v3, v3, v0}, Lcom/zte/regex/Pattern;->escape(ZZZ)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    .line 2059
    iget-object p0, p0, Lcom/zte/regex/Pattern;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    return-object p0

    :cond_2
    :goto_1
    if-ne v0, v6, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 2048
    :goto_2
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_4

    .line 2050
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    move v2, v3

    .line 2053
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/zte/regex/Pattern;->family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2062
    :cond_5
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    :cond_6
    if-ltz v0, :cond_d

    .line 2065
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v5

    if-ne v5, v1, :cond_c

    .line 2066
    iget-object v1, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v5, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/2addr v5, v3

    aget v1, v1, v5

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_7

    .line 2068
    invoke-direct {p0, p1, v0}, Lcom/zte/regex/Pattern;->bitsOrSingle(Lcom/zte/regex/Pattern$BitClass;I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v5, 0x5d

    if-eq v1, v5, :cond_c

    .line 2071
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 2072
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 2074
    invoke-direct {p0, v3, v2, v3}, Lcom/zte/regex/Pattern;->escape(ZZZ)I

    move-result p1

    goto :goto_3

    .line 2076
    :cond_8
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    :goto_3
    if-lt p1, v0, :cond_b

    const/4 v1, 0x2

    .line 2081
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x40

    .line 2082
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2083
    invoke-static {v0, p1}, Lcom/zte/regex/Pattern;->CIRangeU(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2084
    :cond_9
    invoke-static {v0, p1}, Lcom/zte/regex/Pattern;->CIRange(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2086
    :cond_a
    invoke-static {v0, p1}, Lcom/zte/regex/Pattern;->Range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2079
    :cond_b
    const-string p1, "Illegal character range"

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2090
    :cond_c
    invoke-direct {p0, p1, v0}, Lcom/zte/regex/Pattern;->bitsOrSingle(Lcom/zte/regex/Pattern$BitClass;I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2092
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method

.method private read()I
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget v0, v0, v1

    const/4 v1, 0x4

    .line 1152
    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->parsePastWhitespace(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private readEscaped()I
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/zte/regex/Pattern;->temp:[I

    iget v1, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    aget p0, v0, v1

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 632
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 635
    iget p1, p0, Lcom/zte/regex/Pattern;->flags:I

    iput p1, p0, Lcom/zte/regex/Pattern;->flags0:I

    const/4 p1, 0x1

    .line 638
    iput p1, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    const/4 v0, 0x0

    .line 639
    iput v0, p0, Lcom/zte/regex/Pattern;->localCount:I

    .line 640
    iput v0, p0, Lcom/zte/regex/Pattern;->localTCNCount:I

    .line 643
    iget-object v0, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Lcom/zte/regex/Pattern$Start;

    sget-object v1, Lcom/zte/regex/Pattern;->lastAccept:Lcom/zte/regex/Pattern$Node;

    invoke-direct {v0, v1}, Lcom/zte/regex/Pattern$Start;-><init>(Lcom/zte/regex/Pattern$Node;)V

    iput-object v0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    .line 645
    iput-object v1, p0, Lcom/zte/regex/Pattern;->matchRoot:Lcom/zte/regex/Pattern$Node;

    .line 646
    iput-boolean p1, p0, Lcom/zte/regex/Pattern;->compiled:Z

    :cond_0
    return-void
.end method

.method private ref(I)Lcom/zte/regex/Pattern$Node;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1593
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v3, p1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v3, v2

    .line 1608
    iget v2, p0, Lcom/zte/regex/Pattern;->capturingGroupCount:I

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 1613
    :cond_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move p1, v3

    goto :goto_0

    .line 1620
    :cond_1
    iput-boolean v1, p0, Lcom/zte/regex/Pattern;->hasGroupRef:Z

    const/4 v0, 0x2

    .line 1621
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1622
    new-instance v0, Lcom/zte/regex/Pattern$CIBackRef;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/zte/regex/Pattern$CIBackRef;-><init>(IZ)V

    return-object v0

    .line 1624
    :cond_2
    new-instance p0, Lcom/zte/regex/Pattern$BackRef;

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$BackRef;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sequence(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    .line 1367
    :goto_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v2

    if-eqz v2, :cond_11

    const/16 v3, 0x24

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_c

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_b

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_12

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_a

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x10

    const/16 v6, 0x80

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_5

    .line 1411
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 1412
    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1413
    invoke-direct {p0, v5}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    new-instance v2, Lcom/zte/regex/Pattern$UnixCaret;

    invoke-direct {v2}, Lcom/zte/regex/Pattern$UnixCaret;-><init>()V

    goto/16 :goto_6

    .line 1416
    :cond_0
    new-instance v2, Lcom/zte/regex/Pattern$Caret;

    invoke-direct {v2}, Lcom/zte/regex/Pattern$Caret;-><init>()V

    goto/16 :goto_6

    .line 1418
    :cond_1
    new-instance v2, Lcom/zte/regex/Pattern$Begin;

    invoke-direct {v2}, Lcom/zte/regex/Pattern$Begin;-><init>()V

    goto/16 :goto_6

    .line 1390
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->nextEscaped()I

    move-result v2

    const/16 v4, 0x70

    const/16 v7, 0x50

    if-eq v2, v4, :cond_3

    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 1406
    :cond_2
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    .line 1407
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->atom()Lcom/zte/regex/Pattern$Node;

    move-result-object v2

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/4 v4, 0x0

    if-ne v2, v7, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    .line 1394
    :goto_2
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v7

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_5

    .line 1396
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->unread()V

    goto :goto_3

    :cond_5
    move v5, v4

    .line 1401
    :goto_3
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1402
    new-instance v3, Lcom/zte/regex/Pattern$NFCCharProperty;

    invoke-direct {p0, v5, v2}, Lcom/zte/regex/Pattern;->family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/zte/regex/Pattern$NFCCharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    move-object v2, v3

    goto/16 :goto_6

    .line 1404
    :cond_6
    invoke-direct {p0, v5, v2}, Lcom/zte/regex/Pattern;->family(ZZ)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object v2

    goto/16 :goto_6

    .line 1384
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v3}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1385
    new-instance v2, Lcom/zte/regex/Pattern$NFCCharProperty;

    invoke-direct {p0, v5}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$NFCCharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    goto/16 :goto_6

    .line 1387
    :cond_7
    invoke-direct {p0, v5}, Lcom/zte/regex/Pattern;->clazz(Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->newCharProperty(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharProperty;

    move-result-object v2

    goto/16 :goto_6

    .line 1372
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->group0()Lcom/zte/regex/Pattern$Node;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    if-nez v0, :cond_9

    move-object v0, v2

    goto :goto_4

    .line 1379
    :cond_9
    iput-object v2, v1, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 1381
    :goto_4
    iget-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    goto/16 :goto_0

    .line 1445
    :cond_a
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->atom()Lcom/zte/regex/Pattern$Node;

    move-result-object v2

    goto/16 :goto_6

    .line 1450
    :cond_b
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 1451
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Dangling meta character \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 1429
    :cond_c
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    const/16 v2, 0x20

    .line 1430
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1431
    new-instance v2, Lcom/zte/regex/Pattern$CharProperty;

    invoke-static {}, Lcom/zte/regex/Pattern;->ALL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$CharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    goto :goto_6

    .line 1433
    :cond_d
    invoke-direct {p0, v5}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1434
    new-instance v2, Lcom/zte/regex/Pattern$CharProperty;

    invoke-static {}, Lcom/zte/regex/Pattern;->UNIXDOT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$CharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    goto :goto_6

    .line 1436
    :cond_e
    new-instance v2, Lcom/zte/regex/Pattern$CharProperty;

    invoke-static {}, Lcom/zte/regex/Pattern;->DOT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$CharProperty;-><init>(Lcom/zte/regex/Pattern$CharPredicate;)V

    goto :goto_6

    .line 1422
    :cond_f
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    .line 1423
    invoke-direct {p0, v5}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1424
    new-instance v2, Lcom/zte/regex/Pattern$UnixDollar;

    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$UnixDollar;-><init>(Z)V

    goto :goto_6

    .line 1426
    :cond_10
    new-instance v2, Lcom/zte/regex/Pattern$Dollar;

    invoke-direct {p0, v4}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/zte/regex/Pattern$Dollar;-><init>(Z)V

    goto :goto_6

    .line 1453
    :cond_11
    iget v2, p0, Lcom/zte/regex/Pattern;->cursor:I

    iget v3, p0, Lcom/zte/regex/Pattern;->patternLength:I

    if-lt v2, v3, :cond_14

    :cond_12
    :pswitch_6
    if-nez v0, :cond_13

    return-object p1

    .line 1479
    :cond_13
    iput-object p1, v1, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    .line 1480
    iput-object v1, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    return-object v0

    .line 1458
    :cond_14
    :goto_5
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->atom()Lcom/zte/regex/Pattern$Node;

    move-result-object v2

    .line 1462
    :goto_6
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->closure(Lcom/zte/regex/Pattern$Node;)Lcom/zte/regex/Pattern$Node;

    move-result-object v2

    if-nez v0, :cond_15

    move-object v0, v2

    goto :goto_7

    .line 1472
    :cond_15
    iput-object v2, v1, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    :goto_7
    move-object v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private setcursor(I)V
    .locals 0

    .line 2644
    iput p1, p0, Lcom/zte/regex/Pattern;->cursor:I

    return-void
.end method

.method private single(I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    const/4 v0, 0x2

    .line 2015
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    .line 2017
    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->has(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2018
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    .line 2019
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 2022
    invoke-static {v0}, Lcom/zte/regex/Pattern;->SingleU(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2023
    :cond_0
    invoke-static {p1}, Lcom/zte/regex/ASCII;->isAscii(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2024
    invoke-static {p1}, Lcom/zte/regex/ASCII;->toLower(I)I

    move-result p0

    .line 2025
    invoke-static {p1}, Lcom/zte/regex/ASCII;->toUpper(I)I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 2028
    invoke-static {p0, v0}, Lcom/zte/regex/Pattern;->SingleI(II)Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p0

    return-object p0

    .line 2031
    :cond_1
    invoke-static {p1}, Lcom/zte/regex/Pattern;->isSupplementary(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2032
    invoke-static {p1}, Lcom/zte/regex/Pattern;->SingleS(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 2033
    :cond_2
    invoke-static {p1}, Lcom/zte/regex/Pattern;->Single(I)Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object p0

    return-object p0
.end method

.method private skip()I
    .locals 3

    .line 1258
    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    .line 1259
    iget-object v1, p0, Lcom/zte/regex/Pattern;->temp:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    add-int/lit8 v0, v0, 0x2

    .line 1260
    iput v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    return v1
.end method

.method private subFlag()V
    .locals 2

    .line 2459
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    :goto_0
    const/16 v1, 0x55

    if-eq v0, v1, :cond_7

    const/16 v1, 0x69

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x73

    if-eq v0, v1, :cond_4

    const/16 v1, 0x75

    if-eq v0, v1, :cond_3

    const/16 v1, 0x78

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 2472
    :cond_0
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2478
    :cond_1
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2481
    :cond_2
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2475
    :cond_3
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2469
    :cond_4
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2466
    :cond_5
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2463
    :cond_6
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    goto :goto_1

    .line 2484
    :cond_7
    iget v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    and-int/lit16 v0, v0, -0x141

    iput v0, p0, Lcom/zte/regex/Pattern;->flags0:I

    .line 2489
    :goto_1
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->next()I

    move-result v0

    goto :goto_0
.end method

.method private u()I
    .locals 5

    .line 2660
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->uxxxx()I

    move-result v0

    int-to-char v1, v0

    .line 2661
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2662
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->cursor()I

    move-result v2

    .line 2663
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_0

    .line 2664
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->uxxxx()I

    move-result v3

    int-to-char v3, v3

    .line 2665
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2666
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    .line 2668
    :cond_0
    invoke-direct {p0, v2}, Lcom/zte/regex/Pattern;->setcursor(I)V

    :cond_1
    return v0
.end method

.method private unread()V
    .locals 1

    .line 1268
    iget v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/regex/Pattern;->cursor:I

    return-void
.end method

.method private uxxxx()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 2650
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v2

    .line 2651
    invoke-static {v2}, Lcom/zte/regex/ASCII;->isHexDigit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int/lit8 v1, v1, 0x10

    .line 2654
    invoke-static {v2}, Lcom/zte/regex/ASCII;->toDigit(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2652
    :cond_0
    const-string v0, "Illegal Unicode escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    :cond_1
    return v1
.end method

.method private x()I
    .locals 3

    .line 2616
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v0

    .line 2617
    invoke-static {v0}, Lcom/zte/regex/ASCII;->isHexDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1

    .line 2619
    invoke-static {v1}, Lcom/zte/regex/ASCII;->isHexDigit(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2620
    invoke-static {v0}, Lcom/zte/regex/ASCII;->toDigit(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    invoke-static {v1}, Lcom/zte/regex/ASCII;->toDigit(I)I

    move-result v0

    add-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    .line 2622
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/zte/regex/ASCII;->isHexDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2624
    :goto_0
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->read()I

    move-result v1

    invoke-static {v1}, Lcom/zte/regex/ASCII;->isHexDigit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x4

    .line 2625
    invoke-static {v1}, Lcom/zte/regex/ASCII;->toDigit(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x10ffff

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 2627
    :cond_1
    const-string v0, "Hexadecimal codepoint is too big"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    :cond_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    return v0

    .line 2630
    :cond_3
    const-string v0, "Unclosed hexadecimal escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0

    .line 2633
    :cond_4
    const-string v0, "Illegal hexadecimal escape sequence"

    invoke-direct {p0, v0}, Lcom/zte/regex/Pattern;->error(Ljava/lang/String;)Lcom/zte/regex/PatternSyntaxException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public asMatchPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5062
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda15;-><init>(Lcom/zte/regex/Pattern;)V

    return-object v0
.end method

.method public asPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5042
    new-instance v0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda1;-><init>(Lcom/zte/regex/Pattern;)V

    return-object v0
.end method

.method public flags()I
    .locals 0

    .line 392
    iget p0, p0, Lcom/zte/regex/Pattern;->flags0:I

    return p0
.end method

.method synthetic lambda$asMatchPredicate$15$com-zte-regex-Pattern(Ljava/lang/String;)Z
    .locals 0

    .line 5062
    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$asPredicate$14$com-zte-regex-Pattern(Ljava/lang/String;)Z
    .locals 0

    .line 5042
    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/zte/regex/Pattern;->compiled:Z

    if-nez v0, :cond_1

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-boolean v0, p0, Lcom/zte/regex/Pattern;->compiled:Z

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/zte/regex/Pattern;->compile()V

    .line 380
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 382
    :cond_1
    :goto_0
    new-instance v0, Lcom/zte/regex/Matcher;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Matcher;-><init>(Lcom/zte/regex/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method namedGroups()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/zte/regex/Pattern;->namedGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/zte/regex/Pattern;->namedGroups:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, p1, v0}, Lcom/zte/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 509
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object p0

    move v4, v1

    .line 513
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_3

    .line 514
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, p2, -0x1

    if-ge v5, v6, :cond_2

    goto :goto_2

    .line 523
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 525
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 524
    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 525
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 515
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->start()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_4

    goto :goto_1

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->start()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 533
    new-array p0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    :cond_6
    if-eqz v2, :cond_7

    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, p2, :cond_8

    .line 537
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p1, v4, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p2, :cond_9

    :goto_3
    if-lez p0, :cond_9

    add-int/lit8 p1, p0, -0x1

    .line 542
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    .line 544
    :cond_9
    new-array p1, p0, [Ljava/lang/String;

    .line 545
    invoke-virtual {v3, v1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5162
    new-instance v0, Lcom/zte/regex/Pattern$1MatcherIterator;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/Pattern$1MatcherIterator;-><init>(Lcom/zte/regex/Pattern;Ljava/lang/CharSequence;)V

    const/16 p0, 0x110

    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/zte/regex/Pattern;->pattern:Ljava/lang/String;

    return-object p0
.end method
