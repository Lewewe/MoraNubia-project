.class final Lcom/zte/regex/Pattern$Neg;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Neg"
.end annotation


# instance fields
.field cond:Lcom/zte/regex/Pattern$Node;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;)V
    .locals 0

    .line 4423
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4424
    iput-object p1, p0, Lcom/zte/regex/Pattern$Neg;->cond:Lcom/zte/regex/Pattern$Node;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 4427
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4431
    iget-boolean v1, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    if-eqz v1, :cond_0

    .line 4432
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    iput v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4434
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/zte/regex/Matcher;->to:I

    const/4 v2, 0x1

    if-ge p2, v1, :cond_1

    .line 4435
    iget-object v1, p0, Lcom/zte/regex/Pattern$Neg;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    xor-int/2addr v1, v2

    goto :goto_1

    .line 4439
    :cond_1
    iput-boolean v2, p1, Lcom/zte/regex/Matcher;->requireEnd:Z

    .line 4440
    iget-object v1, p0, Lcom/zte/regex/Pattern$Neg;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4444
    :goto_1
    iput v0, p1, Lcom/zte/regex/Matcher;->to:I

    if-eqz v1, :cond_2

    .line 4446
    iget-object p0, p0, Lcom/zte/regex/Pattern$Neg;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2

    :catchall_0
    move-exception p0

    .line 4444
    iput v0, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4445
    throw p0
.end method
