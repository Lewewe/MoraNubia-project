.class final Lcom/zte/regex/Pattern$Pos;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pos"
.end annotation


# instance fields
.field cond:Lcom/zte/regex/Pattern$Node;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Node;)V
    .locals 0

    .line 4398
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4399
    iput-object p1, p0, Lcom/zte/regex/Pattern$Pos;->cond:Lcom/zte/regex/Pattern$Node;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 4402
    iget v0, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4406
    iget-boolean v1, p1, Lcom/zte/regex/Matcher;->transparentBounds:Z

    if-eqz v1, :cond_0

    .line 4407
    invoke-virtual {p1}, Lcom/zte/regex/Matcher;->getTextLength()I

    move-result v1

    iput v1, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4409
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/regex/Pattern$Pos;->cond:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4412
    iput v0, p1, Lcom/zte/regex/Matcher;->to:I

    if-eqz v1, :cond_1

    .line 4414
    iget-object p0, p0, Lcom/zte/regex/Pattern$Pos;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 4412
    iput v0, p1, Lcom/zte/regex/Matcher;->to:I

    .line 4413
    throw p0
.end method
