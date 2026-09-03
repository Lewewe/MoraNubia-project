.class Lcom/zte/regex/Pattern$Node;
.super Ljava/lang/Object;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field next:Lcom/zte/regex/Pattern$Node;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2813
    sget-object v0, Lcom/zte/regex/Pattern;->accept:Lcom/zte/regex/Pattern$Node;

    iput-object v0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 2819
    iput p2, p1, Lcom/zte/regex/Matcher;->last:I

    .line 2820
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    const/4 p2, 0x0

    iget p3, p1, Lcom/zte/regex/Matcher;->first:I

    aput p3, p0, p2

    .line 2821
    iget-object p0, p1, Lcom/zte/regex/Matcher;->groups:[I

    iget p1, p1, Lcom/zte/regex/Matcher;->last:I

    const/4 p2, 0x1

    aput p1, p0, p2

    return p2
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    .line 2828
    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    if-eqz p0, :cond_0

    .line 2829
    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Node;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0

    .line 2831
    :cond_0
    iget-boolean p0, p1, Lcom/zte/regex/Pattern$TreeInfo;->deterministic:Z

    return p0
.end method
