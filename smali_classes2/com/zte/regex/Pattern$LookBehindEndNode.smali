.class Lcom/zte/regex/Pattern$LookBehindEndNode;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookBehindEndNode"
.end annotation


# static fields
.field static INSTANCE:Lcom/zte/regex/Pattern$LookBehindEndNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4457
    new-instance v0, Lcom/zte/regex/Pattern$LookBehindEndNode;

    invoke-direct {v0}, Lcom/zte/regex/Pattern$LookBehindEndNode;-><init>()V

    sput-object v0, Lcom/zte/regex/Pattern$LookBehindEndNode;->INSTANCE:Lcom/zte/regex/Pattern$LookBehindEndNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4455
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 4460
    iget p0, p1, Lcom/zte/regex/Matcher;->lookbehindTo:I

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
