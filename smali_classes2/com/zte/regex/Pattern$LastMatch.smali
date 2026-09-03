.class final Lcom/zte/regex/Pattern$LastMatch;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastMatch"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3026
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 3028
    iget v0, p1, Lcom/zte/regex/Matcher;->oldLast:I

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3030
    :cond_0
    iget-object p0, p0, Lcom/zte/regex/Pattern$LastMatch;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Node;->match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
