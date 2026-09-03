.class Lcom/zte/regex/Pattern$XGrapheme;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XGrapheme"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3274
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 3276
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    if-ge p2, v0, :cond_0

    .line 3277
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    invoke-static {p3, p2, v0}, Lcom/zte/regex/Grapheme;->nextBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 3278
    iget-object p0, p0, Lcom/zte/regex/Pattern$XGrapheme;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 3280
    iput-boolean p0, p1, Lcom/zte/regex/Matcher;->hitEnd:Z

    const/4 p0, 0x0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 1

    .line 3285
    iget v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->minLength:I

    const/4 v0, 0x0

    .line 3286
    iput-boolean v0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    .line 3287
    iget-object p0, p0, Lcom/zte/regex/Pattern$XGrapheme;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
