.class final Lcom/zte/regex/Pattern$Prolog;
.super Lcom/zte/regex/Pattern$Node;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Prolog"
.end annotation


# instance fields
.field loop:Lcom/zte/regex/Pattern$Loop;


# direct methods
.method constructor <init>(Lcom/zte/regex/Pattern$Loop;)V
    .locals 0

    .line 4105
    invoke-direct {p0}, Lcom/zte/regex/Pattern$Node;-><init>()V

    .line 4106
    iput-object p1, p0, Lcom/zte/regex/Pattern$Prolog;->loop:Lcom/zte/regex/Pattern$Loop;

    return-void
.end method


# virtual methods
.method match(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 4109
    iget-object p0, p0, Lcom/zte/regex/Pattern$Prolog;->loop:Lcom/zte/regex/Pattern$Loop;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/regex/Pattern$Loop;->matchInit(Lcom/zte/regex/Matcher;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method study(Lcom/zte/regex/Pattern$TreeInfo;)Z
    .locals 0

    .line 4112
    iget-object p0, p0, Lcom/zte/regex/Pattern$Prolog;->loop:Lcom/zte/regex/Pattern$Loop;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern$Loop;->study(Lcom/zte/regex/Pattern$TreeInfo;)Z

    move-result p0

    return p0
.end method
