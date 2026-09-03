.class Lcom/zte/regex/CharPredicates;
.super Ljava/lang/Object;
.source "CharPredicates.java"


# direct methods
.method public static synthetic $r8$lambda$4ygofDMea5JyvK2hERi8BzMevzg(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9MLmtCSpSLrJJo9fdyInHTigf5U(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9gh7mo-S-tWTXQOZIfU1AK0H2Hs(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A04J_Pvou7eeiV-pH6wveASU_ds(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FQPdO5olfzHHfQR7iMMvifz8KbI(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H6WGzUFo3imw6lrUrj2Jh2tYRqM(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KOn5NFK-J1NwNKQskKvf1MNkvfo(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lylp53KKrYkmFk0n_M2h5hYCeGU(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QBOkc9c_iEpai2mYIVxsxcJ--Vk(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QjfXp2fW5rgeYnk8riYcV69w4F4(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R7MJona98XbG0s8f6xRnzs5ED1o(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TDzpGGM09X48QAoS44VQGDTVhMo(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TXWzFshZh5o5XkBuLFiQyY-a500(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_qrI0lPF8pB3y82uEMrdxdZ5QfY(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cdQsfBo3fxuGOPNkFULWtNqE9s0(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gXOyPFQ8de2JVH-cGMFknx5R37A(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hSxA68z7mHepjURK5XreSqrVk6g(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k2eO3r5bkf6YZgQV-kvWOIQ-Cso(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final ALNUM()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 2

    .line 87
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ALPHABETIC()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-static {}, Lcom/zte/regex/CharPredicates;->DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    return-object v0
.end method

.method static final ALPHABETIC()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda36;-><init>()V

    return-object v0
.end method

.method static final ASCII_DIGIT()Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 472
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda35;-><init>()V

    return-object v0
.end method

.method static final ASCII_SPACE()Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 478
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda38;-><init>()V

    return-object v0
.end method

.method static final ASCII_WORD()Lcom/zte/regex/Pattern$BmpCharPredicate;
    .locals 1

    .line 475
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda12;-><init>()V

    return-object v0
.end method

.method static final ASSIGNED()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 76
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda11;-><init>()V

    return-object v0
.end method

.method static final BLANK()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 95
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda33;-><init>()V

    return-object v0
.end method

.method static final CONTROL()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 48
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda34;-><init>()V

    return-object v0
.end method

.method static final DIGIT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method static final GRAPH()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 106
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda8;-><init>()V

    return-object v0
.end method

.method static final HEX_DIGIT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 2

    .line 67
    invoke-static {}, Lcom/zte/regex/CharPredicates;->DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    new-instance v1, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    return-object v0
.end method

.method static final IDEOGRAPHIC()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 22
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method static final JOIN_CONTROL()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 125
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method static final LETTER()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 18
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda16;-><init>()V

    return-object v0
.end method

.method static final LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 26
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda15;-><init>()V

    return-object v0
.end method

.method static final NONCHARACTER_CODE_POINT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 81
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda37;-><init>()V

    return-object v0
.end method

.method static final PRINT()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 2

    .line 120
    invoke-static {}, Lcom/zte/regex/CharPredicates;->GRAPH()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-static {}, Lcom/zte/regex/CharPredicates;->BLANK()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-static {}, Lcom/zte/regex/CharPredicates;->CONTROL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/regex/Pattern$CharPredicate;->negate()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/regex/Pattern$CharPredicate;->and(Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    return-object v0
.end method

.method static final PUNCTUATION()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 53
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda13;-><init>()V

    return-object v0
.end method

.method static final TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 34
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda22;-><init>()V

    return-object v0
.end method

.method static final UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 30
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method static final WHITE_SPACE()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 39
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method static final WORD()Lcom/zte/regex/Pattern$CharPredicate;
    .locals 3

    .line 134
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ALPHABETIC()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    new-instance v1, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda9;-><init>()V

    .line 140
    invoke-static {}, Lcom/zte/regex/CharPredicates;->JOIN_CONTROL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    return-object v0
.end method

.method private static category(I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 455
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda2;-><init>(I)V

    return-object v0
.end method

.method private static ctype(I)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 463
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda7;-><init>(I)V

    return-object v0
.end method

.method public static forPOSIXName(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 218
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->getPosixPredicate(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0
.end method

.method static forProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 8

    .line 255
    const-string v0, "Cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 256
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    const-string v0, "Lu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 258
    :goto_0
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 262
    :cond_2
    const-string v0, "Ll"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    .line 263
    :goto_1
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 267
    :cond_4
    const-string v0, "Lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 268
    :goto_2
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 272
    :cond_6
    const-string v0, "Lm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x10

    .line 273
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 274
    :cond_7
    const-string v0, "Lo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_8

    .line 275
    invoke-static {v2}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 276
    :cond_8
    const-string v0, "Mn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x40

    .line 277
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 278
    :cond_9
    const-string v0, "Me"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0x80

    .line 279
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 280
    :cond_a
    const-string v0, "Mc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x100

    .line 281
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 282
    :cond_b
    const-string v0, "Nd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p0, 0x200

    .line 283
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 284
    :cond_c
    const-string v0, "Nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x400

    .line 285
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 286
    :cond_d
    const-string v0, "No"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x800

    if-eqz v0, :cond_e

    .line 287
    invoke-static {v3}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 288
    :cond_e
    const-string v0, "Zs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x1000

    if-eqz v0, :cond_f

    .line 289
    invoke-static {v4}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 290
    :cond_f
    const-string v0, "Zl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x2000

    if-eqz v0, :cond_10

    .line 291
    invoke-static {v5}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 292
    :cond_10
    const-string v0, "Zp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x4000

    if-eqz v0, :cond_11

    .line 293
    invoke-static {v6}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 294
    :cond_11
    const-string v0, "Cc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v7, 0x8000

    if-eqz v0, :cond_12

    .line 295
    invoke-static {v7}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 296
    :cond_12
    const-string v0, "Cf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 p0, 0x10000

    .line 297
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 298
    :cond_13
    const-string v0, "Co"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 p0, 0x40000

    .line 299
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 300
    :cond_14
    const-string v0, "Cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 p0, 0x80000

    .line 301
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 302
    :cond_15
    const-string v0, "Pd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 p0, 0x100000

    .line 303
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 304
    :cond_16
    const-string v0, "Ps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 p0, 0x200000

    .line 305
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 306
    :cond_17
    const-string v0, "Pe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/high16 p0, 0x400000

    .line 307
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 308
    :cond_18
    const-string v0, "Pc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 p0, 0x800000

    .line 309
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 310
    :cond_19
    const-string v0, "Po"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 p0, 0x1000000

    .line 311
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 312
    :cond_1a
    const-string v0, "Sm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/high16 p0, 0x2000000

    .line 313
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 314
    :cond_1b
    const-string v0, "Sc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 p0, 0x4000000

    .line 315
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 316
    :cond_1c
    const-string v0, "Sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/high16 p0, 0x8000000

    .line 317
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 318
    :cond_1d
    const-string v0, "So"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/high16 p0, 0x10000000

    .line 319
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 320
    :cond_1e
    const-string v0, "Pi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 p0, 0x20000000

    .line 321
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 322
    :cond_1f
    const-string v0, "Pf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 p0, 0x40000000    # 2.0f

    .line 323
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 324
    :cond_20
    const-string v0, "L"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, 0x3e

    .line 325
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 330
    :cond_21
    const-string v0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 p0, 0x1c0

    .line 331
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 334
    :cond_22
    const-string v0, "N"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 p0, 0xe00

    .line 335
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 338
    :cond_23
    const-string v0, "Z"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 p0, 0x7000

    .line 339
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 342
    :cond_24
    const-string v0, "C"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const p0, 0xd8001

    .line 343
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 348
    :cond_25
    const-string v0, "P"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/high16 p0, 0x61f00000

    .line 349
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 356
    :cond_26
    const-string v0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/high16 p0, 0x1e000000

    .line 357
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 361
    :cond_27
    const-string v0, "LC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 362
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 365
    :cond_28
    const-string v0, "LD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p0, 0x23e

    .line 366
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->category(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 372
    :cond_29
    const-string v0, "L1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const/16 p0, 0xff

    .line 373
    invoke-static {v1, p0}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 374
    :cond_2a
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 375
    invoke-static {}, Lcom/zte/regex/Pattern;->ALL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 376
    :cond_2b
    const-string v0, "ASCII"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p0, 0x7f

    .line 377
    invoke-static {v1, p0}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 378
    :cond_2c
    const-string v0, "Alnum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p0, 0x700

    .line 379
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 380
    :cond_2d
    const-string v0, "Alpha"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x300

    if-eqz v0, :cond_2e

    .line 381
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 382
    :cond_2e
    const-string v0, "Blank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 383
    invoke-static {v6}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 384
    :cond_2f
    const-string v0, "Cntrl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 385
    invoke-static {v5}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 386
    :cond_30
    const-string v0, "Digit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 p0, 0x30

    const/16 p1, 0x39

    .line 387
    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 388
    :cond_31
    const-string v0, "Graph"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 p0, 0x1700

    .line 389
    invoke-static {p0}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 390
    :cond_32
    const-string v0, "Lower"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_33

    .line 391
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    goto :goto_3

    :cond_33
    const/16 p0, 0x61

    const/16 p1, 0x7a

    .line 392
    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :goto_3
    return-object p0

    .line 393
    :cond_34
    const-string v0, "Print"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 p0, 0x7e

    .line 394
    invoke-static {v2, p0}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 395
    :cond_35
    const-string v0, "Punct"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 396
    invoke-static {v4}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 397
    :cond_36
    const-string v0, "Space"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 398
    invoke-static {v3}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 399
    :cond_37
    const-string v0, "Upper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_38

    .line 400
    invoke-static {v1}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    goto :goto_4

    :cond_38
    const/16 p0, 0x41

    const/16 p1, 0x5a

    .line 401
    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->range(II)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :goto_4
    return-object p0

    .line 402
    :cond_39
    const-string v0, "XDigit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 403
    invoke-static {v7}, Lcom/zte/regex/CharPredicates;->ctype(I)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 404
    :cond_3a
    const-string v0, "javaLowerCase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3b

    .line 405
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda17;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda17;-><init>()V

    goto :goto_5

    .line 408
    :cond_3b
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda15;-><init>()V

    :goto_5
    return-object p0

    .line 409
    :cond_3c
    const-string v0, "javaUpperCase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_3d

    .line 410
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda29;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda29;-><init>()V

    goto :goto_6

    .line 413
    :cond_3d
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda4;-><init>()V

    :goto_6
    return-object p0

    .line 414
    :cond_3e
    const-string v0, "javaAlphabetic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 415
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda36;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda36;-><init>()V

    return-object p0

    .line 416
    :cond_3f
    const-string v0, "javaIdeographic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 417
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda1;-><init>()V

    return-object p0

    .line 418
    :cond_40
    const-string v0, "javaTitleCase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_41

    .line 419
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda30;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda30;-><init>()V

    goto :goto_7

    .line 422
    :cond_41
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda22;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda22;-><init>()V

    :goto_7
    return-object p0

    .line 423
    :cond_42
    const-string p1, "javaDigit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 424
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda3;-><init>()V

    return-object p0

    .line 425
    :cond_43
    const-string p1, "javaDefined"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 426
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda31;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda31;-><init>()V

    return-object p0

    .line 427
    :cond_44
    const-string p1, "javaLetter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 428
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda16;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda16;-><init>()V

    return-object p0

    .line 429
    :cond_45
    const-string p1, "javaLetterOrDigit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 430
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda18;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda18;-><init>()V

    return-object p0

    .line 431
    :cond_46
    const-string p1, "javaJavaIdentifierStart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 432
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda19;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda19;-><init>()V

    return-object p0

    .line 433
    :cond_47
    const-string p1, "javaJavaIdentifierPart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 434
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda20;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda20;-><init>()V

    return-object p0

    .line 435
    :cond_48
    const-string p1, "javaUnicodeIdentifierStart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 436
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda21;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda21;-><init>()V

    return-object p0

    .line 437
    :cond_49
    const-string p1, "javaUnicodeIdentifierPart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 438
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda23;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda23;-><init>()V

    return-object p0

    .line 439
    :cond_4a
    const-string p1, "javaIdentifierIgnorable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 440
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda24;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda24;-><init>()V

    return-object p0

    .line 441
    :cond_4b
    const-string p1, "javaSpaceChar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 442
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda25;-><init>()V

    return-object p0

    .line 443
    :cond_4c
    const-string p1, "javaWhitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 444
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda26;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda26;-><init>()V

    return-object p0

    .line 445
    :cond_4d
    const-string p1, "javaISOControl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 446
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda27;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda27;-><init>()V

    return-object p0

    .line 447
    :cond_4e
    const-string p1, "javaMirrored"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 448
    new-instance p0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda28;

    invoke-direct {p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda28;-><init>()V

    return-object p0

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method static forUnicodeBlock(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 242
    :try_start_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 243
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda32;-><init>(Ljava/lang/Character$UnicodeBlock;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forUnicodeProperty(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 210
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->getUnicodePredicate(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-static {p0, p1}, Lcom/zte/regex/CharPredicates;->getPosixPredicate(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0
.end method

.method static forUnicodeScript(Ljava/lang/String;)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeScript;

    move-result-object p0

    .line 231
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Character$UnicodeScript;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPosixPredicate(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 146
    const-string v0, "ALPHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ALPHABETIC()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    const-string v0, "LOWER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {}, Lcom/zte/regex/CharPredicates;->LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :cond_1
    return-object p0

    .line 150
    :cond_2
    const-string v0, "UPPER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lcom/zte/regex/CharPredicates;->UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/zte/regex/CharPredicates;->LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :cond_3
    return-object p0

    .line 152
    :cond_4
    const-string p1, "SPACE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WHITE_SPACE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 154
    :cond_5
    const-string p1, "PUNCT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    invoke-static {}, Lcom/zte/regex/CharPredicates;->PUNCTUATION()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 156
    :cond_6
    const-string p1, "XDIGIT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 157
    invoke-static {}, Lcom/zte/regex/CharPredicates;->HEX_DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 158
    :cond_7
    const-string p1, "ALNUM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 159
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ALNUM()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 160
    :cond_8
    const-string p1, "CNTRL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 161
    invoke-static {}, Lcom/zte/regex/CharPredicates;->CONTROL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 162
    :cond_9
    const-string p1, "DIGIT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 163
    invoke-static {}, Lcom/zte/regex/CharPredicates;->DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 164
    :cond_a
    const-string p1, "BLANK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 165
    invoke-static {}, Lcom/zte/regex/CharPredicates;->BLANK()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 166
    :cond_b
    const-string p1, "GRAPH"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 167
    invoke-static {}, Lcom/zte/regex/CharPredicates;->GRAPH()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 168
    :cond_c
    const-string p1, "PRINT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 169
    invoke-static {}, Lcom/zte/regex/CharPredicates;->PRINT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUnicodePredicate(Ljava/lang/String;Z)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 176
    const-string v0, "ALPHABETIC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ALPHABETIC()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    const-string v0, "ASSIGNED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASSIGNED()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1
    const-string v0, "CONTROL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-static {}, Lcom/zte/regex/CharPredicates;->CONTROL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 182
    :cond_2
    const-string v0, "HEXDIGIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "HEX_DIGIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 184
    :cond_3
    const-string v0, "IDEOGRAPHIC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-static {}, Lcom/zte/regex/CharPredicates;->IDEOGRAPHIC()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 186
    :cond_4
    const-string v0, "JOINCONTROL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "JOIN_CONTROL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    .line 188
    :cond_5
    const-string v0, "LETTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    invoke-static {}, Lcom/zte/regex/CharPredicates;->LETTER()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 190
    :cond_6
    const-string v0, "LOWERCASE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 191
    invoke-static {}, Lcom/zte/regex/CharPredicates;->LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/zte/regex/CharPredicates;->UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :cond_7
    return-object p0

    .line 192
    :cond_8
    const-string v0, "NONCHARACTERCODEPOINT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "NONCHARACTER_CODE_POINT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 194
    :cond_9
    const-string v0, "TITLECASE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    invoke-static {}, Lcom/zte/regex/CharPredicates;->TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/zte/regex/CharPredicates;->LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :cond_a
    return-object p0

    .line 196
    :cond_b
    const-string v0, "PUNCTUATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    invoke-static {}, Lcom/zte/regex/CharPredicates;->PUNCTUATION()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 198
    :cond_c
    const-string v0, "UPPERCASE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 199
    invoke-static {}, Lcom/zte/regex/CharPredicates;->UPPERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/zte/regex/CharPredicates;->LOWERCASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p1

    invoke-static {}, Lcom/zte/regex/CharPredicates;->TITLECASE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/zte/regex/Pattern$CharPredicate;->union(Lcom/zte/regex/Pattern$CharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    :cond_d
    return-object p0

    .line 200
    :cond_e
    const-string p1, "WHITESPACE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "WHITE_SPACE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_0

    .line 202
    :cond_f
    const-string p1, "WORD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 203
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WORD()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_11
    :goto_0
    invoke-static {}, Lcom/zte/regex/CharPredicates;->WHITE_SPACE()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 193
    :cond_12
    :goto_1
    invoke-static {}, Lcom/zte/regex/CharPredicates;->NONCHARACTER_CODE_POINT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 187
    :cond_13
    :goto_2
    invoke-static {}, Lcom/zte/regex/CharPredicates;->JOIN_CONTROL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0

    .line 183
    :cond_14
    :goto_3
    invoke-static {}, Lcom/zte/regex/CharPredicates;->HEX_DIGIT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ASCII_DIGIT$18(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 472
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$ASCII_SPACE$20(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 478
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isSpace(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$ASCII_WORD$19(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 475
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isWord(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$ASSIGNED$4(I)Z
    .locals 0

    .line 76
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$BLANK$6(I)Z
    .locals 2

    .line 96
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

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

.method static synthetic lambda$CONTROL$1(I)Z
    .locals 1

    .line 48
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$GRAPH$7(I)Z
    .locals 1

    const v0, 0x8f001

    .line 112
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    shr-int p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$HEX_DIGIT$3(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_5

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_5

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-le p0, v0, :cond_5

    :cond_2
    const v0, 0xff10

    if-lt p0, v0, :cond_3

    const v0, 0xff19

    if-le p0, v0, :cond_5

    :cond_3
    const v0, 0xff21

    if-lt p0, v0, :cond_4

    const v0, 0xff26

    if-le p0, v0, :cond_5

    :cond_4
    const v0, 0xff41

    if-lt p0, v0, :cond_6

    const v0, 0xff46

    if-gt p0, v0, :cond_6

    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$JOIN_CONTROL$8(I)Z
    .locals 1

    const/16 v0, 0x200c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200d

    if-ne p0, v0, :cond_0

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

.method static synthetic lambda$NONCHARACTER_CODE_POINT$5(I)Z
    .locals 2

    const v0, 0xfffe

    and-int v1, p0, v0

    if-eq v1, v0, :cond_1

    const v0, 0xfdd0

    if-lt p0, v0, :cond_0

    const v0, 0xfdef

    if-gt p0, v0, :cond_0

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

.method static synthetic lambda$PUNCTUATION$2(I)Z
    .locals 1

    const/high16 v0, 0x61f00000

    .line 60
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    shr-int p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$WHITE_SPACE$0(I)Z
    .locals 2

    const/16 v0, 0x7000

    .line 42
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x85

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic lambda$WORD$9(I)Z
    .locals 1

    const v0, 0x8003c0

    .line 139
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    shr-int p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$category$15(II)Z
    .locals 1

    .line 455
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$ctype$17(II)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 463
    invoke-static {p1, p0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$forProperty$12(I)Z
    .locals 1

    .line 405
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

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

.method static synthetic lambda$forProperty$13(I)Z
    .locals 1

    .line 410
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

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

.method static synthetic lambda$forProperty$14(I)Z
    .locals 1

    .line 419
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

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

.method static synthetic lambda$forUnicodeBlock$11(Ljava/lang/Character$UnicodeBlock;I)Z
    .locals 0

    .line 243
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$forUnicodeScript$10(Ljava/lang/Character$UnicodeScript;I)Z
    .locals 0

    .line 231
    invoke-static {p1}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$range$16(III)Z
    .locals 0

    if-gt p0, p2, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static range(II)Lcom/zte/regex/Pattern$CharPredicate;
    .locals 1

    .line 459
    new-instance v0, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/zte/regex/CharPredicates$$ExternalSyntheticLambda5;-><init>(II)V

    return-object v0
.end method
