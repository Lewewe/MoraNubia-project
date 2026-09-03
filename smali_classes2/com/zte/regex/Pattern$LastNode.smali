.class Lcom/zte/regex/Pattern$LastNode;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastNode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2836
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 2843
    iget p0, p1, Lcom/zte/regex/Matcher;->acceptMode:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/zte/regex/Matcher;->to:I

    if-eq p2, p0, :cond_0

    return p3

    .line 2845
    :cond_0
    iput p2, p1, Lcom/zte/regex/Matcher;->last:I

    .line 2846
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p2, p1, Lcom/zte/regex/Matcher;->first:I

    aput p2, p0, p3

    .line 2847
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    aput p1, p0, v0

    return v0
.end method
